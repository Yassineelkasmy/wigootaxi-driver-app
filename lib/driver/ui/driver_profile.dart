import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:wigootaxidriver/application/providers/location/location_provider.dart';
import 'package:wigootaxidriver/driver/domain/driver_record.dart';
import 'package:wigootaxidriver/presentation/shared/submit_button.dart';
import 'package:wigootaxidriver/presentation/theme/colors.dart';
import 'package:wigootaxidriver/presentation/theme/spacings.dart';
import 'package:wigootaxidriver/providers/ride_provider.dart';
import 'package:wigootaxidriver/shared/helpers/latlng_distance.dart';
import 'package:url_launcher/url_launcher.dart';

class DriverProfile extends HookConsumerWidget {
  const DriverProfile({
    Key? key,
    required this.driverRecord,
    required this.panelController,
  }) : super(key: key);
  final DriverRecord driverRecord;
  final PanelController panelController;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final rideState = ref.watch(rideProvider);
    final locationState = ref.watch(locationProvider);
    int distance;
    try {
      distance = (calculateDistance(
                rideState.currentRide!.driverLat!,
                rideState.currentRide!.driverLng!,
                locationState.position!.latitude,
                locationState.position!.longitude,
              ) *
              1000)
          .round();
    } catch (e) {
      distance = 10;
    }

    return MediaQuery.removePadding(
      context: context,
      removeTop: true,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Padding(
          padding: kPadding,
          child: Column(
            children: [
              20.h.verticalSpace,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        height: .15.sw,
                        width: .15.sw,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage('assets/images/user.jpg'),
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                      ),
                      5.w.horizontalSpace,
                      Text(
                        driverRecord.username,
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                  IconButton(
                    color: kPrimaryColor,
                    onPressed: () async {
                      launch('tel://${driverRecord.phone}');
                    },
                    icon: Icon(
                      Icons.phone,
                    ),
                  ),
                ],
              ),
              10.h.verticalSpace,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: SubmitButton(
                      onPressed: () {},
                      text: 'Commencer',
                      color: distance <= 5 ? null : Colors.green,
                    ),
                  ),
                  5.w.horizontalSpace,
                  Expanded(
                    child: SubmitButton(
                      onPressed: () {},
                      text: 'Anuller',
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

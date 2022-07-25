import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:timer_count_down/timer_count_down.dart';
import 'package:wigootaxidriver/application/providers/location/location_provider.dart';
import 'package:wigootaxidriver/driver/domain/driver_record.dart';
import 'package:wigootaxidriver/driver/ui/ride_actions.dart';
import 'package:wigootaxidriver/presentation/shared/submit_button.dart';
import 'package:wigootaxidriver/presentation/theme/colors.dart';
import 'package:wigootaxidriver/presentation/theme/spacings.dart';
import 'package:wigootaxidriver/providers/ride_provider.dart';
import 'package:wigootaxidriver/ride/application/ride_event.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:wigootaxidriver/ride/application/ride_state.dart';

class UserProfile extends StatefulHookConsumerWidget {
  @override
  ConsumerState<UserProfile> createState() => _UserProfileState();
  const UserProfile({
    Key? key,
    required this.userRecord,
    required this.panelController,
  }) : super(key: key);
  final UserRecord userRecord;
  final PanelController panelController;
}

class _UserProfileState extends ConsumerState<UserProfile> {
  @override
  Widget build(BuildContext context) {
    final rideState = ref.watch(rideProvider);
    final rideController = ref.watch(rideProvider.notifier);
    final locationState = ref.watch(locationProvider);
    final showCountDown = useState(false);
    final endTime = useState<int>(
      0,
    );
    ref.listen<RideState>(
      rideProvider,
      (previous, next) {
        if (previous?.driverArrived != next.driverArrived &&
            next.driverArrived) {
          if (endTime.value == 0) {
            endTime.value = 60 * 3;
            showCountDown.value = true;
          }
        }
      },
    );

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
                        widget.userRecord.username,
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
                      launch('tel://${widget.userRecord.phone}');
                    },
                    icon: Icon(
                      Icons.phone,
                    ),
                  ),
                ],
              ),
              10.h.verticalSpace,
              RideActions(),
            ],
          ),
        ),
      ),
    );
  }
}

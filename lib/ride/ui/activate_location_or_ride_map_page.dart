import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:wigootaxidriver/application/location/location_event.dart';
import 'package:wigootaxidriver/application/providers/location/location_provider.dart';
import 'package:wigootaxidriver/driver/domain/driver_record.dart';
import 'package:wigootaxidriver/presentation/routes/router.gr.dart';
import 'package:wigootaxidriver/presentation/shared/submit_button.dart';
import 'package:wigootaxidriver/presentation/theme/spacings.dart';
import 'package:wigootaxidriver/providers/ride_provider.dart';
import 'package:wigootaxidriver/ride/application/ride_event.dart';
import 'package:wigootaxidriver/ride/application/ride_state.dart';
import 'package:wigootaxidriver/ride/ui/ride_cancelled_page.dart';
import 'package:wigootaxidriver/ride/ui/ride_map.dart';
import 'package:wigootaxidriver/shared/ui/map_animation.dart';

class ActivateLocationOrRideMapPage extends HookConsumerWidget {
  const ActivateLocationOrRideMapPage({
    Key? key,
    required this.userRecord,
  }) : super(key: key);
  final UserRecord userRecord;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locationState = ref.watch(locationProvider);
    final locationController = ref.watch(locationProvider.notifier);

    final rideState = ref.watch(rideProvider);
    final rideController = ref.watch(rideProvider.notifier);

    ref.listen<RideState>(
      rideProvider,
      (previous, next) {
        if (next.rideCancelledByUser) {
          rideController.mapEventToState(RideEvent.rideCleared());

          AutoRouter.of(context).replace(ActivateLocationOrMapPageRoute());
          AutoRouter.of(context).push(
            RideCancelledPageRoute(message: 'Le passager a annulé le voyage'),
          );
        }
      },
    );

    return Scaffold(
      body: locationState.position != null
          ? SizedBox(
              height: double.maxFinite,
              width: double.maxFinite,
              child: Column(
                children: [
                  Expanded(
                    child: Stack(
                      fit: StackFit.passthrough,
                      children: [
                        Positioned.fill(
                          child: RideMap(
                            lat: locationState.position!.latitude,
                            long: locationState.position!.longitude,
                            onCameraIdle: () {},
                            onCameraMove: (cameraPosition) {},
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          : SizedBox(
              height: double.maxFinite,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 20.w,
                  vertical: 20.h,
                ),
                child: Column(
                  children: [
                    40.h.verticalSpace,
                    Text(
                      """Donnez-nous accès à votre localisation actuelle lorsque l'application est fermée via votre GPS mobile 
                      pour que les clients Wigoo peuvent vous traquer""",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16.sp,
                      ),
                    ),
                    20.h.verticalSpace,
                    SizedBox(
                      width: double.maxFinite,
                      child: Padding(
                        padding: kPadding,
                        child: SubmitButton(
                          onPressed: () {
                            locationController.mapEventToState(
                              LocationEvent.locationRequested(
                                pressed: true,
                              ),
                            );
                          },
                          text: "Autoriser l'accès au GPS",
                        ),
                      ),
                    ),
                    MapAnimation(),
                  ],
                ),
              ),
            ),
    );
  }
}

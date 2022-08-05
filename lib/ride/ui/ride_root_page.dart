import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:wigootaxidriver/application/providers/location/location_provider.dart';
import 'package:wigootaxidriver/driver/domain/driver_record.dart';
import 'package:wigootaxidriver/driver/ui/user_profile.dart';
import 'package:wigootaxidriver/presentation/routes/router.gr.dart';
import 'package:wigootaxidriver/providers/ride_provider.dart';
import 'package:wigootaxidriver/ride/application/ride_state.dart';
import 'package:wigootaxidriver/ride/ui/activate_location_or_ride_map_page.dart';

class RideRootPage extends HookConsumerWidget {
  RideRootPage({
    Key? key,
    required this.userRecord,
  }) : super(key: key);
  final pickUpPanelController = PanelController();
  final UserRecord userRecord;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final rideController = ref.watch(rideProvider.notifier);

    ref.listen<RideState>(rideProvider, (previous, next) {});
    final locationState = ref.watch(locationProvider);
    final rideState = ref.watch(rideProvider);
    return WillPopScope(
      onWillPop: () async {
        final okCancell = await showOkCancelAlertDialog(
          context: context,
          message: 'Êtes-vous sûr de vouloir annuler votre trajet ?',
          title: 'Confirmation',
          okLabel: 'Oui',
          cancelLabel: 'Non',
        );
        if (okCancell.index == 0) {
          return true;
        } else {
          return false;
        }
      },
      child: Scaffold(
        body: SlidingUpPanel(
          padding: EdgeInsets.symmetric(
            horizontal: 5.w,
          ),
          margin: EdgeInsets.symmetric(
            horizontal: 20.w,
            vertical: 20.h,
          ),
          borderRadius: BorderRadius.circular(15),
          maxHeight: .8.sh,
          panel: UserProfile(
            userRecord: userRecord,
            // isSlidedUp: true,
            panelController: pickUpPanelController,
          ),
          parallaxEnabled: true,
          parallaxOffset: .5,
          minHeight: locationState.position == null
              ? 0
              : !rideState.rideStarted
                  ? .35.sh
                  : 0.25.sh,
          body: ActivateLocationOrRideMapPage(
            userRecord: userRecord,
          ),
          controller: pickUpPanelController,
        ),
      ),
    );
  }
}

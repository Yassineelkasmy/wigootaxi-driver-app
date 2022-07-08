import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:wigootaxidriver/application/providers/location/location_provider.dart';
import 'package:wigootaxidriver/driver/domain/driver_record.dart';
import 'package:wigootaxidriver/driver/ui/driver_profile.dart';
import 'package:wigootaxidriver/ride/ui/activate_location_or_ride_map_page.dart';

class RideRootPage extends HookConsumerWidget {
  RideRootPage({
    Key? key,
    required this.driverRecord,
  }) : super(key: key);
  final pickUpPanelController = PanelController();
  final DriverRecord driverRecord;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locationState = ref.watch(locationProvider);
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
          borderRadius: BorderRadius.circular(15),
          maxHeight: .8.sh,
          panel: DriverProfile(
            // isSlidedUp: true,
            driverRecord: driverRecord,
            panelController: pickUpPanelController,
          ),
          parallaxEnabled: true,
          parallaxOffset: .5,
          minHeight: locationState.position != null ? .3.sh : 0,
          body: ActivateLocationOrRideMapPage(
            driverRecord: driverRecord,
          ),
          controller: pickUpPanelController,
        ),
      ),
    );
  }
}

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:wigootaxidriver/application/location/location_controller.dart';
import 'package:wigootaxidriver/application/location/location_event.dart';
import 'package:wigootaxidriver/application/location/location_state.dart';
import 'package:wigootaxidriver/application/providers/driver/driver_provider.dart';

final locationProvider =
    StateNotifierProvider.autoDispose<LocationController, LocationState>(
  (ref) {
    final driverController = ref.watch(driverProvider.notifier);
    final locationController =
        LocationController(driverController: driverController);

    return locationController
      ..mapEventToState(
        const LocationEvent.locationRequested(
          pressed: false,
        ),
      );
  },
);

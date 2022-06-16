import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:wigootaxidriver/application/location/location_controller.dart';
import 'package:wigootaxidriver/application/location/location_event.dart';
import 'package:wigootaxidriver/driver/services/driver_service.dart';
import 'package:wigootaxidriver/firebase_options.dart';

void locationIsolate(String message) async {
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  final driverService = DriverService();
  final locationController = LocationController(isSpawned: true);
  await locationController.mapEventToState(LocationEvent.locationRequested());
  Timer.periodic(
    Duration(seconds: 5),
    (timer) async {
      driverService.updateLocation(
        lat: locationController.state.position?.latitude ?? 0,
        lng: locationController.state.position?.longitude ?? 0,
      );
    },
  );
}

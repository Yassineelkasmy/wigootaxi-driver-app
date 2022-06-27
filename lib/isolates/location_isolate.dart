import 'dart:async';
import 'dart:isolate';

import 'package:firebase_core/firebase_core.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:wigootaxidriver/application/location/location_controller.dart';
import 'package:wigootaxidriver/application/location/location_event.dart';
import 'package:wigootaxidriver/constants/storage_keys.dart';
import 'package:wigootaxidriver/driver/services/driver_service.dart';
import 'package:wigootaxidriver/firebase_options.dart';

void locationIsolate(String message) async {
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  final prefs = await SharedPreferences.getInstance();
  bool isOnline = prefs.getBool(isOnlineKey) ?? false;

  final driverService = DriverService();

  final locationController = LocationController(isSpawned: true);
  await locationController.mapEventToState(LocationEvent.locationRequested());

  Timer.periodic(
    Duration(seconds: 5),
    (timer) async {
      await prefs.reload();
      final newIsOnline = prefs.getBool(isOnlineKey) ?? isOnline;
      print("isolate " + prefs.getBool(isOnlineKey).toString());

      if (newIsOnline) {
        driverService.updateLocation(
          lat: locationController.state.position?.latitude ?? 0,
          lng: locationController.state.position?.longitude ?? 0,
        );
      }
    },
  );
}

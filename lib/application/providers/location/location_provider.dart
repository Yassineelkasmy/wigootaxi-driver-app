import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_isolate/flutter_isolate.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:wigootaxidriver/application/location/location_controller.dart';
import 'package:wigootaxidriver/application/location/location_event.dart';
import 'package:wigootaxidriver/application/location/location_state.dart';
import 'package:wigootaxidriver/driver/services/driver_service.dart';
import 'package:wigootaxidriver/firebase_options.dart';

final locationProvider =
    StateNotifierProvider.autoDispose<LocationController, LocationState>(
  (ref) {
    final locationController = LocationController();

    return locationController
      ..mapEventToState(
        const LocationEvent.locationRequested(),
      );
  },
);

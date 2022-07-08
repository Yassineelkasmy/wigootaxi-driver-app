import 'dart:async';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:wigootaxidriver/constants/storage_keys.dart';
import 'package:wigootaxidriver/ride/application/ride_event.dart';
import 'package:wigootaxidriver/ride/application/ride_state.dart';
import 'package:wigootaxidriver/ride/domain/ride.dart';
import 'package:wigootaxidriver/ride/services/ride_service.dart';

class RideController extends StateNotifier<RideState> {
  RideController() : super(RideState.initial());

  StreamSubscription<Ride>? rideSubscribtion;
  final RideService _rideService = RideService();

  initializeRideStream(String rideId) async {
    rideSubscribtion?.cancel();
    rideSubscribtion = _rideService
        .rideStream(
      rideId: rideId,
    )
        .listen(
      (ride) {
        if (!state.rideInitialized) {
          state = state.copyWith(rideInitialized: true);
        }
        state = state.copyWith(currentRide: ride, rideInitialized: true);
      },
    );
  }

  Future mapEventToState(RideEvent event) {
    return event.map(
      rideAccepted: (event) async {},
      rideDenied: (event) async {},
      rideInitialized: (event) async {
        final _prefs = await SharedPreferences.getInstance();

        _prefs.setString(
          currentRideKey,
          event.rideId,
        );
        _prefs.setBool(
          isOnlineKey,
          true,
        );
        initializeRideStream(event.rideId);
      },
      driverArrived: (event) async {},
      rideCancelledByDriver: (event) async {},
      rideCancelledByUser: (event) async {},
      rideFinished: (event) async {},
      userPicked: (event) async {},
    );
  }
}

import 'dart:async';

import 'package:geoflutterfire/geoflutterfire.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:wigootaxidriver/constants/storage_keys.dart';
import 'package:wigootaxidriver/ride/application/ride_event.dart';
import 'package:wigootaxidriver/ride/application/ride_state.dart';
import 'package:wigootaxidriver/ride/domain/ride.dart';
import 'package:wigootaxidriver/ride/services/ride_service.dart';
import 'package:wigootaxidriver/shared/helpers/latlng_distance.dart';

class RideController extends StateNotifier<RideState> {
  RideController() : super(RideState.initial());
  final geo = Geoflutterfire();

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
        bool driverArrived = false;
        if (!state.driverArrived) {
          driverArrived = isDriverArrived(ride);
          if (driverArrived) {}
        }

        if (!state.driverArrived && driverArrived) {
          mapEventToState(
            DriverArrived(
              ride,
              Duration(days: 1),
            ),
          );
        }

        final distanceFromStart = calculateDistance(
              ride.driverLat!,
              ride.driverLng!,
              ride.startLat,
              ride.startLng,
            ) *
            1000.round();
        state = state.copyWith(
          currentRide: ride,
          rideInitialized: true,
          driverArrived: driverArrived,
          driverDistanceFromStart: distanceFromStart.toInt(),
        );
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
      driverArrived: (event) async {
        _rideService.declareDriverArrival(
          ride: event.ride,
          duration: event.driverArrivalDuration,
        );
      },
      rideCancelledByDriver: (event) async {},
      rideCancelledByUser: (event) async {},
      rideFinished: (event) async {},
      userPicked: (event) async {},
    );
  }

  isDriverArrived(Ride ride) {
    final distance = calculateDistance(
          ride.driverLat!,
          ride.driverLng!,
          ride.startLat,
          ride.startLng,
        ) *
        1000.round();

    if (distance <= 30) {
      return true;
    } else {
      return false;
    }
  }
}

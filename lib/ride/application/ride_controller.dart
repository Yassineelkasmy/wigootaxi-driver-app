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
        }

        if (!state.driverArrived && driverArrived) {
          mapEventToState(
            RideEvent.driverArrived(
              ride,
              Duration(days: 1),
            ),
          );
        }

        final driverDistanceFromStart = calculateDistance(
              ride.driverLat!,
              ride.driverLng!,
              ride.startLat,
              ride.startLng,
            ) *
            1000.round();
        final userDistanceFromStart = calculateDistance(
              ride.userLat!,
              ride.userLng!,
              ride.startLat,
              ride.startLng,
            ) *
            1000.round();
        state = state.copyWith(
          currentRide: ride,
          rideInitialized: true,
          driverDistanceFromStart: driverDistanceFromStart.toInt(),
          userrDistanceFromStart: userDistanceFromStart.toInt(),
        );
      },
    );
  }

  Future mapEventToState(RideEvent event) {
    return event.map(
      driverCancellTimeOff: (event) async {
        state = state.copyWith(
          driverCanCncell: true,
        );
      },
      rideStarted: (event) async {
        await _rideService.startRide(
          state.currentRide!.id,
        );
      },
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
        state = state.copyWith(driverArrived: true);
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

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
import 'package:wigootaxidriver/shared/helpers/serialize_coordinates_path.dart';

class RideController extends StateNotifier<RideState> {
  RideController() : super(RideState.initial());
  final geo = Geoflutterfire();
  Ride? currentRide;

  StreamSubscription<Ride>? rideSubscribtion;
  final RideService _rideService = RideService();

  initializeRideStream(String rideId) async {
    rideSubscribtion?.cancel();
    rideSubscribtion = _rideService
        .rideStream(
      rideId: rideId,
    )
        .listen(
      (ride) async {
        if (!state.rideInitialized) {
          state = state.copyWith(rideInitialized: true);
        }
        bool driverArrived = false;
        bool driverArrivedToDestination = false;
        if (!state.driverArrived) {
          driverArrived = isDriverArrived(ride);
        }
        if (!state.driverArrivedToDestination) {
          driverArrivedToDestination = isDriverArrivedToDestination(ride);
        }

        final driverDistanceFromStart = calculateDistance(
              ride.driverLat!,
              ride.driverLng!,
              ride.startLat,
              ride.startLng,
            ) *
            1000.round();
        final driverDistanceFromDestination = calculateDistance(
              ride.driverLat!,
              ride.driverLng!,
              ride.destinationLat,
              ride.destinationLng,
            ) *
            1000.round();

        final distanceTravelled = pathDistance(
          stringPathToCoordinates(ride.path),
        );
        state = state.copyWith(
          currentRide: ride,
          rideCancelledByUser: ride.cancelledByUser ?? false,
          rideInitialized: true,
          driverDistanceFromStart: driverDistanceFromStart.toInt(),
          distanceTravelled: distanceTravelled,
          driverDistanceFromDestination: driverDistanceFromDestination.toInt(),
        );
        currentRide = ride;
      },
    );
  }

  Future mapEventToState(RideEvent event) {
    return event.map(
      rideCleared: (event) async {
        rideSubscribtion?.cancel();
        state = RideState.initial();
      },
      driverArrivedToDestination: (event) async {
        await _rideService.declareDriverDestinationArrival(
          duration: event.driverDestinationArrivalDuration,
          ride: event.ride,
          distanceTravelled: state.distanceTravelled,
        );
        state = state.copyWith(
          driverArrivedToDestination: true,
        );
      },
      driverCancellTimeOff: (event) async {
        state = state.copyWith(
          driverCanCncell: true,
        );
      },
      rideStarted: (event) async {
        await _rideService.startRide(
          state.currentRide!.id,
        );

        state = state.copyWith(rideStarted: true);
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
        await _rideService.declareDriverArrival(
          ride: event.ride,
          duration: event.driverArrivalDuration,
        );
        state = state.copyWith(
          driverArrived: true,
        );
      },
      rideCancelledByDriver: (event) async {
        rideSubscribtion?.cancel();

        state = state.copyWith(rideCancelled: true);

        await _rideService.cancelRide(
          ride: state.currentRide!,
          beforeTimeOut: event.beforeTimeOut,
        );
        final _prefs = await SharedPreferences.getInstance();
        _prefs.remove(currentRideKey);
        _prefs.setBool(isDrivingKey, false);
        state = RideState.initial();
      },
      rideCancelledByUser: (event) async {},
      rideFinished: (event) async {
        rideSubscribtion?.cancel();
        state = state.copyWith(rideFinished: true);
        await _rideService.finishRide(
          ride: state.currentRide!,
          totalPrice: event.totalPrice,
          totalDistance: event.totalDistance,
          totalDuration: event.totalDuration,
        );
        final _prefs = await SharedPreferences.getInstance();
        _prefs.remove(currentRideKey);

        _prefs.setBool(isDrivingKey, false);
        state = RideState.initial();
      },
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

    if (distance <= 40) {
      return true;
    } else {
      return false;
    }
  }

  isDriverArrivedToDestination(Ride ride) {
    final distance = calculateDistance(
          ride.driverLat!,
          ride.driverLng!,
          ride.startLat,
          ride.startLng,
        ) *
        1000.round();

    if (distance <= 40) {
      return true;
    } else {
      return false;
    }
  }
}

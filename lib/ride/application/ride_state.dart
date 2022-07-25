import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wigootaxidriver/booking/domain/booking.dart';
import 'package:wigootaxidriver/driver/domain/driver_record.dart';
import 'package:wigootaxidriver/ride/domain/ride.dart';

part 'ride_state.freezed.dart';

@freezed
class RideState with _$RideState {
  const factory RideState({
    Booking? currentBooking,
    DriverRecord? driverRecord,
    Ride? currentRide,
    required bool rideInitialized,
    required bool initializingRide,
    required int driverDistanceFromStart,
    required int userrDistanceFromStart,
    required bool driverArrived,
    required bool driverCanCncell,
  }) = _RideState;

  factory RideState.initial() => RideState(
        initializingRide: false,
        rideInitialized: false,
        driverArrived: false,
        driverCanCncell: false,
        userrDistanceFromStart: 10000,
        driverDistanceFromStart: 10000,
      );
}

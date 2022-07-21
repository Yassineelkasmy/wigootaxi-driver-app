import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ride_event.freezed.dart';

@freezed
class RideEvent with _$RideEvent {
  const factory RideEvent.rideAccepted() = RideAccepted;
  const factory RideEvent.driverArrived() = DriverArrived;
  const factory RideEvent.rideCancelledByUser() = RideCancelledByUser;
  const factory RideEvent.rideCancelledByDriver() = RideCancelledByDriver;
  const factory RideEvent.userPicked() = UserPicked;
  const factory RideEvent.rideFinished() = RideFinished;
  const factory RideEvent.driverArrived() = DriverArrived;
  const factory RideEvent.rideDenied() = RideDnied;
  const factory RideEvent.rideInitialized(String rideId) = RideInitilialized;
}

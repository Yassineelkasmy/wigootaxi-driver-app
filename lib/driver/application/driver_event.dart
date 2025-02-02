import 'package:freezed_annotation/freezed_annotation.dart';

part 'driver_event.freezed.dart';

@freezed
class DriverEvent with _$DriverEvent {
  const factory DriverEvent.onlineActivated() = OnlineActivated;
  const factory DriverEvent.onlineDeactivated() = OnlineDeactivated;
  const factory DriverEvent.rideAccepted(double driverLat, double driverLng) =
      RideAccepted;

  const factory DriverEvent.currnetRideCleaned() = CurrnetRideCleaned;
}

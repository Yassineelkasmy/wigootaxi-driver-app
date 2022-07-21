import 'package:freezed_annotation/freezed_annotation.dart';

part 'ride.freezed.dart';

@freezed
class Ride with _$Ride {
  const factory Ride({
    required DateTime ts,
    required String driverUid,
    required String userUid,
    double? driverLat,
    double? driverLng,
    double? userLat,
    double? userLng,
    double? destinationLng,
    double? destinationLat,
    double? startLng,
    double? startLat,
    dynamic currentDriverLocation,
    dynamic currentUserLocation,
    dynamic start,
    dynamic destination,
    bool? cancelledByUser,
    bool? cancelledByDriver,
    int? driverArriveDuration,
    int? driverWaitDuration,
    int? rideDuration,
  }) = _Ride;
}

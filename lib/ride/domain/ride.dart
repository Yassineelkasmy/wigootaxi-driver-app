import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ride.freezed.dart';
part 'ride.g.dart';

@JsonSerializable()
@freezed
class Ride with _$Ride {
  const factory Ride({
    required String id,
    required String driverUid,
    required String userUid,
    required List<String> path,
    required List<String> pathToStart,
    required String disttext,
    required String durtext,
    required int distance,
    required int duration,
    required DateTime driverPickedAt,
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
    bool? driverArrived,
    bool? started,
    bool? driving,
    bool? cancelledByDriver,
    int? driverArriveDuration,
    int? driverWaitDuration,
    int? rideDuration,
  }) = _Ride;

  factory Ride.fromJson(Map<String, dynamic> json) {
    json["driverPickedAt"] =
        ((json["driverPickedAt"] as Timestamp).toDate().toString());
    return _$RideFromJson(json);
  }
}

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wigootaxidriver/shared/helpers/timestamps_converter.dart';

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
    @TimestampConverter() required DateTime driverPickedAt,
    @TimestampConverter() required DateTime ts,
    required int price_per_km,
    @TimestampOrNullConverter() DateTime? driverArrivedAt,
    @TimestampOrNullConverter() DateTime? startedAt,
    @TimestampOrNullConverter() DateTime? finishedAt,
    String? start_name,
    String? dest_name,
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
    bool? finished,
    bool? cancelledByDriver,
    int? driverArriveDuration,
    int? driverWaitDuration,
    int? totalDuration,
    int? totalDistance,
    double? totalPrice,
    double? tva,
    double? revenue,
    double? driverRevenue,
  }) = _Ride;

  factory Ride.fromJson(Map<String, dynamic> json) {
    return _$RideFromJson(json);
  }
}

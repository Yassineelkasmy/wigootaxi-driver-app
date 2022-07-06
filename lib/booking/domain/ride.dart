import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ride.freezed.dart';

@freezed
class Ride with _$Ride {
  const factory Ride({
    required DateTime ts,
    required String driverUid,
    required String userUid,
    GeoPoint? currentDriverLocation,
    GeoPoint? currentUserLocation,
    bool? cancelledByUser,
    bool? cancelledByDriver,
    int? driverArriveDuration,
    int? driverWaitDuration,
    int? rideDuration,
  }) = _Ride;
}

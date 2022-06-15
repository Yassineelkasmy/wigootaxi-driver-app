import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'booking.freezed.dart';
part 'booking.g.dart';

@JsonSerializable()
@freezed
class Booking with _$Booking {
  const factory Booking({
    required String id,
    required String dest_name,
    required String dest_place_id,
    required double dest_lat,
    required double dest_lng,
    required String start_name,
    required double start_lat,
    required double start_lng,
    required String start_place_id,
    required String type,
    required String disttext,
    required String durtext,
    required int distance,
    required int duration,
    required String phone,
    required DateTime ts,
    DateTime? date,
  }) = _Booking;

  factory Booking.fromJson(Map<String, dynamic> json) {
    json["ts"] = ((json["ts"] as Timestamp).toDate().toString());
    json["date"] = ((json["date"] as Timestamp?)?.toDate().toString());
    return _$BookingFromJson(json);
  }
}

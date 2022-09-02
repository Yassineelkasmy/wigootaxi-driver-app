import 'package:freezed_annotation/freezed_annotation.dart';

part 'driver_record.freezed.dart';
part 'driver_record.g.dart';

@freezed
class DriverRecord with _$DriverRecord {
  const factory DriverRecord({
    required double lng,
    required double lat,
    required String id,
    required int lastSeconds,
    required String username,
    required String phone,
    String? currentRideId,
    String? currentUserId,
    String? booking_call,
    String? bookingUserUid,
    BookingRecord? booking,
  }) = _DriverRecord;

  factory DriverRecord.fromJson(Map<String, dynamic> json) =>
      _$DriverRecordFromJson(json);
}

@freezed
class UserRecord with _$UserRecord {
  const factory UserRecord({
    required String id,
    required String username,
    required String phone,
  }) = _UserRecord;

  factory UserRecord.fromJson(Map<String, dynamic> json) =>
      _$UserRecordFromJson(json);
}

@freezed
class BookingRecord with _$BookingRecord {
  const factory BookingRecord({
    required String id,
    required UserRecord user,
    required String start_name,
    required String dest_name,
    required String disttext,
    required String durtext,
  }) = _BookingRecord;

  factory BookingRecord.fromJson(Map<String, dynamic> json) =>
      _$BookingRecordFromJson(json);
}

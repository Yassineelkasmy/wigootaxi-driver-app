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
    required String status,
  }) = _DriverRecord;

  factory DriverRecord.fromJson(Map<String, dynamic> json) =>
      _$DriverRecordFromJson(json);
}

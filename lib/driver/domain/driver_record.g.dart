// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'driver_record.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DriverRecord _$$_DriverRecordFromJson(Map<String, dynamic> json) =>
    _$_DriverRecord(
      lng: (json['lng'] as num).toDouble(),
      lat: (json['lat'] as num).toDouble(),
      id: json['id'] as String,
      lastSeconds: json['lastSeconds'] as int,
      username: json['username'] as String,
      phone: json['phone'] as String,
      booking_call: json['booking_call'] as String?,
      bookingUserUid: json['bookingUserUid'] as String?,
      booking: json['booking'] == null
          ? null
          : BookingRecord.fromJson(json['booking'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_DriverRecordToJson(_$_DriverRecord instance) =>
    <String, dynamic>{
      'lng': instance.lng,
      'lat': instance.lat,
      'id': instance.id,
      'lastSeconds': instance.lastSeconds,
      'username': instance.username,
      'phone': instance.phone,
      'booking_call': instance.booking_call,
      'bookingUserUid': instance.bookingUserUid,
      'booking': instance.booking,
    };

_$_UserRecord _$$_UserRecordFromJson(Map<String, dynamic> json) =>
    _$_UserRecord(
      id: json['id'] as String,
      username: json['username'] as String,
      phone: json['phone'] as String,
    );

Map<String, dynamic> _$$_UserRecordToJson(_$_UserRecord instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'phone': instance.phone,
    };

_$_BookingRecord _$$_BookingRecordFromJson(Map<String, dynamic> json) =>
    _$_BookingRecord(
      id: json['id'] as String,
      user: UserRecord.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_BookingRecordToJson(_$_BookingRecord instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user': instance.user,
    };

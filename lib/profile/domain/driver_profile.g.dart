// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'driver_profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DriverProfile _$$_DriverProfileFromJson(Map<String, dynamic> json) =>
    _$_DriverProfile(
      username: json['username'] as String,
      phone: json['phone'] as String,
      ridesIgnored: json['ridesIgnored'] as int?,
      totalAmount: (json['totalAmount'] as num?)?.toDouble(),
      tvaToPay: (json['tvaToPay'] as num?)?.toDouble(),
      revenueToPay: (json['revenueToPay'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_DriverProfileToJson(_$_DriverProfile instance) =>
    <String, dynamic>{
      'username': instance.username,
      'phone': instance.phone,
      'ridesIgnored': instance.ridesIgnored,
      'totalAmount': instance.totalAmount,
      'tvaToPay': instance.tvaToPay,
      'revenueToPay': instance.revenueToPay,
    };

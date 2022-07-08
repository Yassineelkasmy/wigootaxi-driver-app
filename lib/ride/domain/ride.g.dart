// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ride.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Ride _$$_RideFromJson(Map<String, dynamic> json) => _$_Ride(
      driverUid: json['driverUid'] as String,
      userUid: json['userUid'] as String,
      driverLat: (json['driverLat'] as num?)?.toDouble(),
      driverLng: (json['driverLng'] as num?)?.toDouble(),
      userLat: (json['userLat'] as num?)?.toDouble(),
      userLng: (json['userLng'] as num?)?.toDouble(),
      currentDriverLocation: json['currentDriverLocation'],
      currentUserLocation: json['currentUserLocation'],
      cancelledByUser: json['cancelledByUser'] as bool?,
      cancelledByDriver: json['cancelledByDriver'] as bool?,
      driverArriveDuration: json['driverArriveDuration'] as int?,
      driverWaitDuration: json['driverWaitDuration'] as int?,
      rideDuration: json['rideDuration'] as int?,
    );

Map<String, dynamic> _$$_RideToJson(_$_Ride instance) => <String, dynamic>{
      'driverUid': instance.driverUid,
      'userUid': instance.userUid,
      'driverLat': instance.driverLat,
      'driverLng': instance.driverLng,
      'userLat': instance.userLat,
      'userLng': instance.userLng,
      'currentDriverLocation': instance.currentDriverLocation,
      'currentUserLocation': instance.currentUserLocation,
      'cancelledByUser': instance.cancelledByUser,
      'cancelledByDriver': instance.cancelledByDriver,
      'driverArriveDuration': instance.driverArriveDuration,
      'driverWaitDuration': instance.driverWaitDuration,
      'rideDuration': instance.rideDuration,
    };

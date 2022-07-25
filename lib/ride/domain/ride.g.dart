// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ride.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Ride _$$_RideFromJson(Map<String, dynamic> json) => _$_Ride(
      id: json['id'] as String,
      driverUid: json['driverUid'] as String,
      userUid: json['userUid'] as String,
      path: (json['path'] as List<dynamic>).map((e) => e as String).toList(),
      driverLat: (json['driverLat'] as num?)?.toDouble(),
      driverLng: (json['driverLng'] as num?)?.toDouble(),
      userLat: (json['userLat'] as num?)?.toDouble(),
      userLng: (json['userLng'] as num?)?.toDouble(),
      destinationLng: (json['destinationLng'] as num?)?.toDouble(),
      destinationLat: (json['destinationLat'] as num?)?.toDouble(),
      startLng: (json['startLng'] as num?)?.toDouble(),
      startLat: (json['startLat'] as num?)?.toDouble(),
      currentDriverLocation: json['currentDriverLocation'],
      currentUserLocation: json['currentUserLocation'],
      start: json['start'],
      destination: json['destination'],
      cancelledByUser: json['cancelledByUser'] as bool?,
      driverArrived: json['driverArrived'] as bool?,
      started: json['started'] as bool?,
      driving: json['driving'] as bool?,
      cancelledByDriver: json['cancelledByDriver'] as bool?,
      driverArriveDuration: json['driverArriveDuration'] as int?,
      driverWaitDuration: json['driverWaitDuration'] as int?,
      rideDuration: json['rideDuration'] as int?,
    );

Map<String, dynamic> _$$_RideToJson(_$_Ride instance) => <String, dynamic>{
      'id': instance.id,
      'driverUid': instance.driverUid,
      'userUid': instance.userUid,
      'path': instance.path,
      'driverLat': instance.driverLat,
      'driverLng': instance.driverLng,
      'userLat': instance.userLat,
      'userLng': instance.userLng,
      'destinationLng': instance.destinationLng,
      'destinationLat': instance.destinationLat,
      'startLng': instance.startLng,
      'startLat': instance.startLat,
      'currentDriverLocation': instance.currentDriverLocation,
      'currentUserLocation': instance.currentUserLocation,
      'start': instance.start,
      'destination': instance.destination,
      'cancelledByUser': instance.cancelledByUser,
      'driverArrived': instance.driverArrived,
      'started': instance.started,
      'driving': instance.driving,
      'cancelledByDriver': instance.cancelledByDriver,
      'driverArriveDuration': instance.driverArriveDuration,
      'driverWaitDuration': instance.driverWaitDuration,
      'rideDuration': instance.rideDuration,
    };

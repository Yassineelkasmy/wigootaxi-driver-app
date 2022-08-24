// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ride.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Ride _$RideFromJson(Map<String, dynamic> json) => Ride(
      id: json['id'] as String,
      driverUid: json['driverUid'] as String,
      userUid: json['userUid'] as String,
      path: (json['path'] as List<dynamic>).map((e) => e as String).toList(),
      pathToStart: (json['pathToStart'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      disttext: json['disttext'] as String,
      durtext: json['durtext'] as String,
      distance: json['distance'] as int,
      duration: json['duration'] as int,
      driverPickedAt: const TimestampConverter()
          .fromJson(json['driverPickedAt'] as Timestamp),
      ts: const TimestampConverter().fromJson(json['ts'] as Timestamp),
      price_per_km: json['price_per_km'] as int,
      driverArrivedAt: const TimestampOrNullConverter()
          .fromJson(json['driverArrivedAt'] as Timestamp?),
      startedAt: const TimestampOrNullConverter()
          .fromJson(json['startedAt'] as Timestamp?),
      finishedAt: const TimestampOrNullConverter()
          .fromJson(json['finishedAt'] as Timestamp?),
      start_name: json['start_name'] as String?,
      dest_name: json['dest_name'] as String?,
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
      finished: json['finished'] as bool?,
      cancelledByDriver: json['cancelledByDriver'] as bool?,
      driverArriveDuration: json['driverArriveDuration'] as int?,
      driverWaitDuration: json['driverWaitDuration'] as int?,
      totalDuration: json['totalDuration'] as int?,
      totalDistance: json['totalDistance'] as int?,
      totalPrice: (json['totalPrice'] as num?)?.toDouble(),
      tva: (json['tva'] as num?)?.toDouble(),
      revenue: (json['revenue'] as num?)?.toDouble(),
      driverRevenue: (json['driverRevenue'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$RideToJson(Ride instance) => <String, dynamic>{
      'id': instance.id,
      'driverUid': instance.driverUid,
      'userUid': instance.userUid,
      'path': instance.path,
      'pathToStart': instance.pathToStart,
      'disttext': instance.disttext,
      'durtext': instance.durtext,
      'distance': instance.distance,
      'duration': instance.duration,
      'driverPickedAt':
          const TimestampConverter().toJson(instance.driverPickedAt),
      'ts': const TimestampConverter().toJson(instance.ts),
      'price_per_km': instance.price_per_km,
      'driverArrivedAt':
          const TimestampOrNullConverter().toJson(instance.driverArrivedAt),
      'startedAt': const TimestampOrNullConverter().toJson(instance.startedAt),
      'finishedAt':
          const TimestampOrNullConverter().toJson(instance.finishedAt),
      'start_name': instance.start_name,
      'dest_name': instance.dest_name,
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
      'finished': instance.finished,
      'cancelledByDriver': instance.cancelledByDriver,
      'driverArriveDuration': instance.driverArriveDuration,
      'driverWaitDuration': instance.driverWaitDuration,
      'totalDuration': instance.totalDuration,
      'totalDistance': instance.totalDistance,
      'totalPrice': instance.totalPrice,
      'tva': instance.tva,
      'revenue': instance.revenue,
      'driverRevenue': instance.driverRevenue,
    };

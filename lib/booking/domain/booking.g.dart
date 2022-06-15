// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booking.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Booking _$BookingFromJson(Map<String, dynamic> json) => Booking(
      id: json['id'] as String,
      dest_name: json['dest_name'] as String,
      dest_place_id: json['dest_place_id'] as String,
      dest_lat: (json['dest_lat'] as num).toDouble(),
      dest_lng: (json['dest_lng'] as num).toDouble(),
      start_name: json['start_name'] as String,
      start_lat: (json['start_lat'] as num).toDouble(),
      start_lng: (json['start_lng'] as num).toDouble(),
      start_place_id: json['start_place_id'] as String,
      type: json['type'] as String,
      disttext: json['disttext'] as String,
      durtext: json['durtext'] as String,
      distance: json['distance'] as int,
      duration: json['duration'] as int,
      phone: json['phone'] as String,
      ts: DateTime.parse(json['ts'] as String),
      date:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
    );

Map<String, dynamic> _$BookingToJson(Booking instance) => <String, dynamic>{
      'id': instance.id,
      'dest_name': instance.dest_name,
      'dest_place_id': instance.dest_place_id,
      'dest_lat': instance.dest_lat,
      'dest_lng': instance.dest_lng,
      'start_name': instance.start_name,
      'start_lat': instance.start_lat,
      'start_lng': instance.start_lng,
      'start_place_id': instance.start_place_id,
      'type': instance.type,
      'disttext': instance.disttext,
      'durtext': instance.durtext,
      'distance': instance.distance,
      'duration': instance.duration,
      'phone': instance.phone,
      'ts': instance.ts.toIso8601String(),
      'date': instance.date?.toIso8601String(),
    };

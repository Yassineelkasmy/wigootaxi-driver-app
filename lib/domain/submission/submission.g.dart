// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'submission.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Submission _$SubmissionFromJson(Map<String, dynamic> json) => Submission(
      id: json['id'] as String,
      profil: json['profil'] as String,
      cin_devant: json['cin_devant'] as String,
      cin_arriere: json['cin_arriere'] as String,
      permis_devant: json['permis_devant'] as String,
      permis_arriere: json['permis_arriere'] as String,
      cartegrisse_devant: json['cartegrisse_devant'] as String,
      cartegrisse_arriere: json['cartegrisse_arriere'] as String,
      status: json['status'] as String,
      type: json['type'] as String,
      ts: DateTime.parse(json['ts'] as String),
    );

Map<String, dynamic> _$SubmissionToJson(Submission instance) =>
    <String, dynamic>{
      'id': instance.id,
      'profil': instance.profil,
      'cin_devant': instance.cin_devant,
      'cin_arriere': instance.cin_arriere,
      'permis_devant': instance.permis_devant,
      'permis_arriere': instance.permis_arriere,
      'cartegrisse_devant': instance.cartegrisse_devant,
      'cartegrisse_arriere': instance.cartegrisse_arriere,
      'status': instance.status,
      'type': instance.type,
      'ts': instance.ts.toIso8601String(),
    };

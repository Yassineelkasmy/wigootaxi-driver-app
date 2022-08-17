// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'metrics.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Metrics _$$_MetricsFromJson(Map<String, dynamic> json) => _$_Metrics(
      price_per_km: (json['price_per_km'] as num).toDouble(),
      amountThreshold: (json['amountThreshold'] as num).toDouble(),
      revenuePercentage: (json['revenuePercentage'] as num).toDouble(),
      tvaPercentage: (json['tvaPercentage'] as num).toDouble(),
    );

Map<String, dynamic> _$$_MetricsToJson(_$_Metrics instance) =>
    <String, dynamic>{
      'price_per_km': instance.price_per_km,
      'amountThreshold': instance.amountThreshold,
      'revenuePercentage': instance.revenuePercentage,
      'tvaPercentage': instance.tvaPercentage,
    };

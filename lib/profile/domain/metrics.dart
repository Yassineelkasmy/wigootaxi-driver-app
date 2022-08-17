import 'package:freezed_annotation/freezed_annotation.dart';

part 'metrics.freezed.dart';
part 'metrics.g.dart';

@freezed
class Metrics with _$Metrics {
  const factory Metrics({
    required double price_per_km,
    required double amountThreshold,
    required double revenuePercentage,
    required double tvaPercentage,
  }) = _Metrics;

  factory Metrics.fromJson(Map<String, dynamic> json) =>
      _$MetricsFromJson(json);
}

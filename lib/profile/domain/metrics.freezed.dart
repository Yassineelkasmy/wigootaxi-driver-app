// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'metrics.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Metrics _$MetricsFromJson(Map<String, dynamic> json) {
  return _Metrics.fromJson(json);
}

/// @nodoc
class _$MetricsTearOff {
  const _$MetricsTearOff();

  _Metrics call(
      {required double price_per_km,
      required double amountThreshold,
      required double revenuePercentage,
      required double tvaPercentage}) {
    return _Metrics(
      price_per_km: price_per_km,
      amountThreshold: amountThreshold,
      revenuePercentage: revenuePercentage,
      tvaPercentage: tvaPercentage,
    );
  }

  Metrics fromJson(Map<String, Object?> json) {
    return Metrics.fromJson(json);
  }
}

/// @nodoc
const $Metrics = _$MetricsTearOff();

/// @nodoc
mixin _$Metrics {
  double get price_per_km => throw _privateConstructorUsedError;
  double get amountThreshold => throw _privateConstructorUsedError;
  double get revenuePercentage => throw _privateConstructorUsedError;
  double get tvaPercentage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MetricsCopyWith<Metrics> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MetricsCopyWith<$Res> {
  factory $MetricsCopyWith(Metrics value, $Res Function(Metrics) then) =
      _$MetricsCopyWithImpl<$Res>;
  $Res call(
      {double price_per_km,
      double amountThreshold,
      double revenuePercentage,
      double tvaPercentage});
}

/// @nodoc
class _$MetricsCopyWithImpl<$Res> implements $MetricsCopyWith<$Res> {
  _$MetricsCopyWithImpl(this._value, this._then);

  final Metrics _value;
  // ignore: unused_field
  final $Res Function(Metrics) _then;

  @override
  $Res call({
    Object? price_per_km = freezed,
    Object? amountThreshold = freezed,
    Object? revenuePercentage = freezed,
    Object? tvaPercentage = freezed,
  }) {
    return _then(_value.copyWith(
      price_per_km: price_per_km == freezed
          ? _value.price_per_km
          : price_per_km // ignore: cast_nullable_to_non_nullable
              as double,
      amountThreshold: amountThreshold == freezed
          ? _value.amountThreshold
          : amountThreshold // ignore: cast_nullable_to_non_nullable
              as double,
      revenuePercentage: revenuePercentage == freezed
          ? _value.revenuePercentage
          : revenuePercentage // ignore: cast_nullable_to_non_nullable
              as double,
      tvaPercentage: tvaPercentage == freezed
          ? _value.tvaPercentage
          : tvaPercentage // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$MetricsCopyWith<$Res> implements $MetricsCopyWith<$Res> {
  factory _$MetricsCopyWith(_Metrics value, $Res Function(_Metrics) then) =
      __$MetricsCopyWithImpl<$Res>;
  @override
  $Res call(
      {double price_per_km,
      double amountThreshold,
      double revenuePercentage,
      double tvaPercentage});
}

/// @nodoc
class __$MetricsCopyWithImpl<$Res> extends _$MetricsCopyWithImpl<$Res>
    implements _$MetricsCopyWith<$Res> {
  __$MetricsCopyWithImpl(_Metrics _value, $Res Function(_Metrics) _then)
      : super(_value, (v) => _then(v as _Metrics));

  @override
  _Metrics get _value => super._value as _Metrics;

  @override
  $Res call({
    Object? price_per_km = freezed,
    Object? amountThreshold = freezed,
    Object? revenuePercentage = freezed,
    Object? tvaPercentage = freezed,
  }) {
    return _then(_Metrics(
      price_per_km: price_per_km == freezed
          ? _value.price_per_km
          : price_per_km // ignore: cast_nullable_to_non_nullable
              as double,
      amountThreshold: amountThreshold == freezed
          ? _value.amountThreshold
          : amountThreshold // ignore: cast_nullable_to_non_nullable
              as double,
      revenuePercentage: revenuePercentage == freezed
          ? _value.revenuePercentage
          : revenuePercentage // ignore: cast_nullable_to_non_nullable
              as double,
      tvaPercentage: tvaPercentage == freezed
          ? _value.tvaPercentage
          : tvaPercentage // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Metrics implements _Metrics {
  const _$_Metrics(
      {required this.price_per_km,
      required this.amountThreshold,
      required this.revenuePercentage,
      required this.tvaPercentage});

  factory _$_Metrics.fromJson(Map<String, dynamic> json) =>
      _$$_MetricsFromJson(json);

  @override
  final double price_per_km;
  @override
  final double amountThreshold;
  @override
  final double revenuePercentage;
  @override
  final double tvaPercentage;

  @override
  String toString() {
    return 'Metrics(price_per_km: $price_per_km, amountThreshold: $amountThreshold, revenuePercentage: $revenuePercentage, tvaPercentage: $tvaPercentage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Metrics &&
            const DeepCollectionEquality()
                .equals(other.price_per_km, price_per_km) &&
            const DeepCollectionEquality()
                .equals(other.amountThreshold, amountThreshold) &&
            const DeepCollectionEquality()
                .equals(other.revenuePercentage, revenuePercentage) &&
            const DeepCollectionEquality()
                .equals(other.tvaPercentage, tvaPercentage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(price_per_km),
      const DeepCollectionEquality().hash(amountThreshold),
      const DeepCollectionEquality().hash(revenuePercentage),
      const DeepCollectionEquality().hash(tvaPercentage));

  @JsonKey(ignore: true)
  @override
  _$MetricsCopyWith<_Metrics> get copyWith =>
      __$MetricsCopyWithImpl<_Metrics>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MetricsToJson(this);
  }
}

abstract class _Metrics implements Metrics {
  const factory _Metrics(
      {required double price_per_km,
      required double amountThreshold,
      required double revenuePercentage,
      required double tvaPercentage}) = _$_Metrics;

  factory _Metrics.fromJson(Map<String, dynamic> json) = _$_Metrics.fromJson;

  @override
  double get price_per_km;
  @override
  double get amountThreshold;
  @override
  double get revenuePercentage;
  @override
  double get tvaPercentage;
  @override
  @JsonKey(ignore: true)
  _$MetricsCopyWith<_Metrics> get copyWith =>
      throw _privateConstructorUsedError;
}

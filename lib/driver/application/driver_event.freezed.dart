// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'driver_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DriverEventTearOff {
  const _$DriverEventTearOff();

  OnlineActivated onlineActivated() {
    return const OnlineActivated();
  }

  OnlineDeactivated onlineDeactivated() {
    return const OnlineDeactivated();
  }

  RideAccepted rideAccepted(double driverLat, double driverLng) {
    return RideAccepted(
      driverLat,
      driverLng,
    );
  }

  CurrnetRideCleaned currnetRideCleaned() {
    return const CurrnetRideCleaned();
  }
}

/// @nodoc
const $DriverEvent = _$DriverEventTearOff();

/// @nodoc
mixin _$DriverEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onlineActivated,
    required TResult Function() onlineDeactivated,
    required TResult Function(double driverLat, double driverLng) rideAccepted,
    required TResult Function() currnetRideCleaned,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? onlineActivated,
    TResult Function()? onlineDeactivated,
    TResult Function(double driverLat, double driverLng)? rideAccepted,
    TResult Function()? currnetRideCleaned,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onlineActivated,
    TResult Function()? onlineDeactivated,
    TResult Function(double driverLat, double driverLng)? rideAccepted,
    TResult Function()? currnetRideCleaned,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnlineActivated value) onlineActivated,
    required TResult Function(OnlineDeactivated value) onlineDeactivated,
    required TResult Function(RideAccepted value) rideAccepted,
    required TResult Function(CurrnetRideCleaned value) currnetRideCleaned,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnlineActivated value)? onlineActivated,
    TResult Function(OnlineDeactivated value)? onlineDeactivated,
    TResult Function(RideAccepted value)? rideAccepted,
    TResult Function(CurrnetRideCleaned value)? currnetRideCleaned,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnlineActivated value)? onlineActivated,
    TResult Function(OnlineDeactivated value)? onlineDeactivated,
    TResult Function(RideAccepted value)? rideAccepted,
    TResult Function(CurrnetRideCleaned value)? currnetRideCleaned,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DriverEventCopyWith<$Res> {
  factory $DriverEventCopyWith(
          DriverEvent value, $Res Function(DriverEvent) then) =
      _$DriverEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$DriverEventCopyWithImpl<$Res> implements $DriverEventCopyWith<$Res> {
  _$DriverEventCopyWithImpl(this._value, this._then);

  final DriverEvent _value;
  // ignore: unused_field
  final $Res Function(DriverEvent) _then;
}

/// @nodoc
abstract class $OnlineActivatedCopyWith<$Res> {
  factory $OnlineActivatedCopyWith(
          OnlineActivated value, $Res Function(OnlineActivated) then) =
      _$OnlineActivatedCopyWithImpl<$Res>;
}

/// @nodoc
class _$OnlineActivatedCopyWithImpl<$Res>
    extends _$DriverEventCopyWithImpl<$Res>
    implements $OnlineActivatedCopyWith<$Res> {
  _$OnlineActivatedCopyWithImpl(
      OnlineActivated _value, $Res Function(OnlineActivated) _then)
      : super(_value, (v) => _then(v as OnlineActivated));

  @override
  OnlineActivated get _value => super._value as OnlineActivated;
}

/// @nodoc

class _$OnlineActivated implements OnlineActivated {
  const _$OnlineActivated();

  @override
  String toString() {
    return 'DriverEvent.onlineActivated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is OnlineActivated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onlineActivated,
    required TResult Function() onlineDeactivated,
    required TResult Function(double driverLat, double driverLng) rideAccepted,
    required TResult Function() currnetRideCleaned,
  }) {
    return onlineActivated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? onlineActivated,
    TResult Function()? onlineDeactivated,
    TResult Function(double driverLat, double driverLng)? rideAccepted,
    TResult Function()? currnetRideCleaned,
  }) {
    return onlineActivated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onlineActivated,
    TResult Function()? onlineDeactivated,
    TResult Function(double driverLat, double driverLng)? rideAccepted,
    TResult Function()? currnetRideCleaned,
    required TResult orElse(),
  }) {
    if (onlineActivated != null) {
      return onlineActivated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnlineActivated value) onlineActivated,
    required TResult Function(OnlineDeactivated value) onlineDeactivated,
    required TResult Function(RideAccepted value) rideAccepted,
    required TResult Function(CurrnetRideCleaned value) currnetRideCleaned,
  }) {
    return onlineActivated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnlineActivated value)? onlineActivated,
    TResult Function(OnlineDeactivated value)? onlineDeactivated,
    TResult Function(RideAccepted value)? rideAccepted,
    TResult Function(CurrnetRideCleaned value)? currnetRideCleaned,
  }) {
    return onlineActivated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnlineActivated value)? onlineActivated,
    TResult Function(OnlineDeactivated value)? onlineDeactivated,
    TResult Function(RideAccepted value)? rideAccepted,
    TResult Function(CurrnetRideCleaned value)? currnetRideCleaned,
    required TResult orElse(),
  }) {
    if (onlineActivated != null) {
      return onlineActivated(this);
    }
    return orElse();
  }
}

abstract class OnlineActivated implements DriverEvent {
  const factory OnlineActivated() = _$OnlineActivated;
}

/// @nodoc
abstract class $OnlineDeactivatedCopyWith<$Res> {
  factory $OnlineDeactivatedCopyWith(
          OnlineDeactivated value, $Res Function(OnlineDeactivated) then) =
      _$OnlineDeactivatedCopyWithImpl<$Res>;
}

/// @nodoc
class _$OnlineDeactivatedCopyWithImpl<$Res>
    extends _$DriverEventCopyWithImpl<$Res>
    implements $OnlineDeactivatedCopyWith<$Res> {
  _$OnlineDeactivatedCopyWithImpl(
      OnlineDeactivated _value, $Res Function(OnlineDeactivated) _then)
      : super(_value, (v) => _then(v as OnlineDeactivated));

  @override
  OnlineDeactivated get _value => super._value as OnlineDeactivated;
}

/// @nodoc

class _$OnlineDeactivated implements OnlineDeactivated {
  const _$OnlineDeactivated();

  @override
  String toString() {
    return 'DriverEvent.onlineDeactivated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is OnlineDeactivated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onlineActivated,
    required TResult Function() onlineDeactivated,
    required TResult Function(double driverLat, double driverLng) rideAccepted,
    required TResult Function() currnetRideCleaned,
  }) {
    return onlineDeactivated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? onlineActivated,
    TResult Function()? onlineDeactivated,
    TResult Function(double driverLat, double driverLng)? rideAccepted,
    TResult Function()? currnetRideCleaned,
  }) {
    return onlineDeactivated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onlineActivated,
    TResult Function()? onlineDeactivated,
    TResult Function(double driverLat, double driverLng)? rideAccepted,
    TResult Function()? currnetRideCleaned,
    required TResult orElse(),
  }) {
    if (onlineDeactivated != null) {
      return onlineDeactivated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnlineActivated value) onlineActivated,
    required TResult Function(OnlineDeactivated value) onlineDeactivated,
    required TResult Function(RideAccepted value) rideAccepted,
    required TResult Function(CurrnetRideCleaned value) currnetRideCleaned,
  }) {
    return onlineDeactivated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnlineActivated value)? onlineActivated,
    TResult Function(OnlineDeactivated value)? onlineDeactivated,
    TResult Function(RideAccepted value)? rideAccepted,
    TResult Function(CurrnetRideCleaned value)? currnetRideCleaned,
  }) {
    return onlineDeactivated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnlineActivated value)? onlineActivated,
    TResult Function(OnlineDeactivated value)? onlineDeactivated,
    TResult Function(RideAccepted value)? rideAccepted,
    TResult Function(CurrnetRideCleaned value)? currnetRideCleaned,
    required TResult orElse(),
  }) {
    if (onlineDeactivated != null) {
      return onlineDeactivated(this);
    }
    return orElse();
  }
}

abstract class OnlineDeactivated implements DriverEvent {
  const factory OnlineDeactivated() = _$OnlineDeactivated;
}

/// @nodoc
abstract class $RideAcceptedCopyWith<$Res> {
  factory $RideAcceptedCopyWith(
          RideAccepted value, $Res Function(RideAccepted) then) =
      _$RideAcceptedCopyWithImpl<$Res>;
  $Res call({double driverLat, double driverLng});
}

/// @nodoc
class _$RideAcceptedCopyWithImpl<$Res> extends _$DriverEventCopyWithImpl<$Res>
    implements $RideAcceptedCopyWith<$Res> {
  _$RideAcceptedCopyWithImpl(
      RideAccepted _value, $Res Function(RideAccepted) _then)
      : super(_value, (v) => _then(v as RideAccepted));

  @override
  RideAccepted get _value => super._value as RideAccepted;

  @override
  $Res call({
    Object? driverLat = freezed,
    Object? driverLng = freezed,
  }) {
    return _then(RideAccepted(
      driverLat == freezed
          ? _value.driverLat
          : driverLat // ignore: cast_nullable_to_non_nullable
              as double,
      driverLng == freezed
          ? _value.driverLng
          : driverLng // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$RideAccepted implements RideAccepted {
  const _$RideAccepted(this.driverLat, this.driverLng);

  @override
  final double driverLat;
  @override
  final double driverLng;

  @override
  String toString() {
    return 'DriverEvent.rideAccepted(driverLat: $driverLat, driverLng: $driverLng)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RideAccepted &&
            const DeepCollectionEquality().equals(other.driverLat, driverLat) &&
            const DeepCollectionEquality().equals(other.driverLng, driverLng));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(driverLat),
      const DeepCollectionEquality().hash(driverLng));

  @JsonKey(ignore: true)
  @override
  $RideAcceptedCopyWith<RideAccepted> get copyWith =>
      _$RideAcceptedCopyWithImpl<RideAccepted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onlineActivated,
    required TResult Function() onlineDeactivated,
    required TResult Function(double driverLat, double driverLng) rideAccepted,
    required TResult Function() currnetRideCleaned,
  }) {
    return rideAccepted(driverLat, driverLng);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? onlineActivated,
    TResult Function()? onlineDeactivated,
    TResult Function(double driverLat, double driverLng)? rideAccepted,
    TResult Function()? currnetRideCleaned,
  }) {
    return rideAccepted?.call(driverLat, driverLng);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onlineActivated,
    TResult Function()? onlineDeactivated,
    TResult Function(double driverLat, double driverLng)? rideAccepted,
    TResult Function()? currnetRideCleaned,
    required TResult orElse(),
  }) {
    if (rideAccepted != null) {
      return rideAccepted(driverLat, driverLng);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnlineActivated value) onlineActivated,
    required TResult Function(OnlineDeactivated value) onlineDeactivated,
    required TResult Function(RideAccepted value) rideAccepted,
    required TResult Function(CurrnetRideCleaned value) currnetRideCleaned,
  }) {
    return rideAccepted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnlineActivated value)? onlineActivated,
    TResult Function(OnlineDeactivated value)? onlineDeactivated,
    TResult Function(RideAccepted value)? rideAccepted,
    TResult Function(CurrnetRideCleaned value)? currnetRideCleaned,
  }) {
    return rideAccepted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnlineActivated value)? onlineActivated,
    TResult Function(OnlineDeactivated value)? onlineDeactivated,
    TResult Function(RideAccepted value)? rideAccepted,
    TResult Function(CurrnetRideCleaned value)? currnetRideCleaned,
    required TResult orElse(),
  }) {
    if (rideAccepted != null) {
      return rideAccepted(this);
    }
    return orElse();
  }
}

abstract class RideAccepted implements DriverEvent {
  const factory RideAccepted(double driverLat, double driverLng) =
      _$RideAccepted;

  double get driverLat;
  double get driverLng;
  @JsonKey(ignore: true)
  $RideAcceptedCopyWith<RideAccepted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrnetRideCleanedCopyWith<$Res> {
  factory $CurrnetRideCleanedCopyWith(
          CurrnetRideCleaned value, $Res Function(CurrnetRideCleaned) then) =
      _$CurrnetRideCleanedCopyWithImpl<$Res>;
}

/// @nodoc
class _$CurrnetRideCleanedCopyWithImpl<$Res>
    extends _$DriverEventCopyWithImpl<$Res>
    implements $CurrnetRideCleanedCopyWith<$Res> {
  _$CurrnetRideCleanedCopyWithImpl(
      CurrnetRideCleaned _value, $Res Function(CurrnetRideCleaned) _then)
      : super(_value, (v) => _then(v as CurrnetRideCleaned));

  @override
  CurrnetRideCleaned get _value => super._value as CurrnetRideCleaned;
}

/// @nodoc

class _$CurrnetRideCleaned implements CurrnetRideCleaned {
  const _$CurrnetRideCleaned();

  @override
  String toString() {
    return 'DriverEvent.currnetRideCleaned()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is CurrnetRideCleaned);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onlineActivated,
    required TResult Function() onlineDeactivated,
    required TResult Function(double driverLat, double driverLng) rideAccepted,
    required TResult Function() currnetRideCleaned,
  }) {
    return currnetRideCleaned();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? onlineActivated,
    TResult Function()? onlineDeactivated,
    TResult Function(double driverLat, double driverLng)? rideAccepted,
    TResult Function()? currnetRideCleaned,
  }) {
    return currnetRideCleaned?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onlineActivated,
    TResult Function()? onlineDeactivated,
    TResult Function(double driverLat, double driverLng)? rideAccepted,
    TResult Function()? currnetRideCleaned,
    required TResult orElse(),
  }) {
    if (currnetRideCleaned != null) {
      return currnetRideCleaned();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnlineActivated value) onlineActivated,
    required TResult Function(OnlineDeactivated value) onlineDeactivated,
    required TResult Function(RideAccepted value) rideAccepted,
    required TResult Function(CurrnetRideCleaned value) currnetRideCleaned,
  }) {
    return currnetRideCleaned(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnlineActivated value)? onlineActivated,
    TResult Function(OnlineDeactivated value)? onlineDeactivated,
    TResult Function(RideAccepted value)? rideAccepted,
    TResult Function(CurrnetRideCleaned value)? currnetRideCleaned,
  }) {
    return currnetRideCleaned?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnlineActivated value)? onlineActivated,
    TResult Function(OnlineDeactivated value)? onlineDeactivated,
    TResult Function(RideAccepted value)? rideAccepted,
    TResult Function(CurrnetRideCleaned value)? currnetRideCleaned,
    required TResult orElse(),
  }) {
    if (currnetRideCleaned != null) {
      return currnetRideCleaned(this);
    }
    return orElse();
  }
}

abstract class CurrnetRideCleaned implements DriverEvent {
  const factory CurrnetRideCleaned() = _$CurrnetRideCleaned;
}

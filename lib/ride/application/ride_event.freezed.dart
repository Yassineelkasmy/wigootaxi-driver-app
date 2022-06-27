// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'ride_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RideEventTearOff {
  const _$RideEventTearOff();

  RideAccepted rideAccepted() {
    return const RideAccepted();
  }

  RideDnied rideDenied() {
    return const RideDnied();
  }
}

/// @nodoc
const $RideEvent = _$RideEventTearOff();

/// @nodoc
mixin _$RideEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() rideAccepted,
    required TResult Function() rideDenied,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? rideAccepted,
    TResult Function()? rideDenied,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? rideAccepted,
    TResult Function()? rideDenied,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RideAccepted value) rideAccepted,
    required TResult Function(RideDnied value) rideDenied,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RideAccepted value)? rideAccepted,
    TResult Function(RideDnied value)? rideDenied,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RideAccepted value)? rideAccepted,
    TResult Function(RideDnied value)? rideDenied,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RideEventCopyWith<$Res> {
  factory $RideEventCopyWith(RideEvent value, $Res Function(RideEvent) then) =
      _$RideEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$RideEventCopyWithImpl<$Res> implements $RideEventCopyWith<$Res> {
  _$RideEventCopyWithImpl(this._value, this._then);

  final RideEvent _value;
  // ignore: unused_field
  final $Res Function(RideEvent) _then;
}

/// @nodoc
abstract class $RideAcceptedCopyWith<$Res> {
  factory $RideAcceptedCopyWith(
          RideAccepted value, $Res Function(RideAccepted) then) =
      _$RideAcceptedCopyWithImpl<$Res>;
}

/// @nodoc
class _$RideAcceptedCopyWithImpl<$Res> extends _$RideEventCopyWithImpl<$Res>
    implements $RideAcceptedCopyWith<$Res> {
  _$RideAcceptedCopyWithImpl(
      RideAccepted _value, $Res Function(RideAccepted) _then)
      : super(_value, (v) => _then(v as RideAccepted));

  @override
  RideAccepted get _value => super._value as RideAccepted;
}

/// @nodoc

class _$RideAccepted implements RideAccepted {
  const _$RideAccepted();

  @override
  String toString() {
    return 'RideEvent.rideAccepted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is RideAccepted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() rideAccepted,
    required TResult Function() rideDenied,
  }) {
    return rideAccepted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? rideAccepted,
    TResult Function()? rideDenied,
  }) {
    return rideAccepted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? rideAccepted,
    TResult Function()? rideDenied,
    required TResult orElse(),
  }) {
    if (rideAccepted != null) {
      return rideAccepted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RideAccepted value) rideAccepted,
    required TResult Function(RideDnied value) rideDenied,
  }) {
    return rideAccepted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RideAccepted value)? rideAccepted,
    TResult Function(RideDnied value)? rideDenied,
  }) {
    return rideAccepted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RideAccepted value)? rideAccepted,
    TResult Function(RideDnied value)? rideDenied,
    required TResult orElse(),
  }) {
    if (rideAccepted != null) {
      return rideAccepted(this);
    }
    return orElse();
  }
}

abstract class RideAccepted implements RideEvent {
  const factory RideAccepted() = _$RideAccepted;
}

/// @nodoc
abstract class $RideDniedCopyWith<$Res> {
  factory $RideDniedCopyWith(RideDnied value, $Res Function(RideDnied) then) =
      _$RideDniedCopyWithImpl<$Res>;
}

/// @nodoc
class _$RideDniedCopyWithImpl<$Res> extends _$RideEventCopyWithImpl<$Res>
    implements $RideDniedCopyWith<$Res> {
  _$RideDniedCopyWithImpl(RideDnied _value, $Res Function(RideDnied) _then)
      : super(_value, (v) => _then(v as RideDnied));

  @override
  RideDnied get _value => super._value as RideDnied;
}

/// @nodoc

class _$RideDnied implements RideDnied {
  const _$RideDnied();

  @override
  String toString() {
    return 'RideEvent.rideDenied()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is RideDnied);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() rideAccepted,
    required TResult Function() rideDenied,
  }) {
    return rideDenied();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? rideAccepted,
    TResult Function()? rideDenied,
  }) {
    return rideDenied?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? rideAccepted,
    TResult Function()? rideDenied,
    required TResult orElse(),
  }) {
    if (rideDenied != null) {
      return rideDenied();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RideAccepted value) rideAccepted,
    required TResult Function(RideDnied value) rideDenied,
  }) {
    return rideDenied(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RideAccepted value)? rideAccepted,
    TResult Function(RideDnied value)? rideDenied,
  }) {
    return rideDenied?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RideAccepted value)? rideAccepted,
    TResult Function(RideDnied value)? rideDenied,
    required TResult orElse(),
  }) {
    if (rideDenied != null) {
      return rideDenied(this);
    }
    return orElse();
  }
}

abstract class RideDnied implements RideEvent {
  const factory RideDnied() = _$RideDnied;
}

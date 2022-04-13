// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'location_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LocationEventTearOff {
  const _$LocationEventTearOff();

  LocationRequested locationRequested() {
    return const LocationRequested();
  }

  LocationDetected locationDetected() {
    return const LocationDetected();
  }

  PermessionDenied permessionDenied() {
    return const PermessionDenied();
  }
}

/// @nodoc
const $LocationEvent = _$LocationEventTearOff();

/// @nodoc
mixin _$LocationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() locationRequested,
    required TResult Function() locationDetected,
    required TResult Function() permessionDenied,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? locationRequested,
    TResult Function()? locationDetected,
    TResult Function()? permessionDenied,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? locationRequested,
    TResult Function()? locationDetected,
    TResult Function()? permessionDenied,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocationRequested value) locationRequested,
    required TResult Function(LocationDetected value) locationDetected,
    required TResult Function(PermessionDenied value) permessionDenied,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LocationRequested value)? locationRequested,
    TResult Function(LocationDetected value)? locationDetected,
    TResult Function(PermessionDenied value)? permessionDenied,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocationRequested value)? locationRequested,
    TResult Function(LocationDetected value)? locationDetected,
    TResult Function(PermessionDenied value)? permessionDenied,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationEventCopyWith<$Res> {
  factory $LocationEventCopyWith(
          LocationEvent value, $Res Function(LocationEvent) then) =
      _$LocationEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$LocationEventCopyWithImpl<$Res>
    implements $LocationEventCopyWith<$Res> {
  _$LocationEventCopyWithImpl(this._value, this._then);

  final LocationEvent _value;
  // ignore: unused_field
  final $Res Function(LocationEvent) _then;
}

/// @nodoc
abstract class $LocationRequestedCopyWith<$Res> {
  factory $LocationRequestedCopyWith(
          LocationRequested value, $Res Function(LocationRequested) then) =
      _$LocationRequestedCopyWithImpl<$Res>;
}

/// @nodoc
class _$LocationRequestedCopyWithImpl<$Res>
    extends _$LocationEventCopyWithImpl<$Res>
    implements $LocationRequestedCopyWith<$Res> {
  _$LocationRequestedCopyWithImpl(
      LocationRequested _value, $Res Function(LocationRequested) _then)
      : super(_value, (v) => _then(v as LocationRequested));

  @override
  LocationRequested get _value => super._value as LocationRequested;
}

/// @nodoc

class _$LocationRequested implements LocationRequested {
  const _$LocationRequested();

  @override
  String toString() {
    return 'LocationEvent.locationRequested()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LocationRequested);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() locationRequested,
    required TResult Function() locationDetected,
    required TResult Function() permessionDenied,
  }) {
    return locationRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? locationRequested,
    TResult Function()? locationDetected,
    TResult Function()? permessionDenied,
  }) {
    return locationRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? locationRequested,
    TResult Function()? locationDetected,
    TResult Function()? permessionDenied,
    required TResult orElse(),
  }) {
    if (locationRequested != null) {
      return locationRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocationRequested value) locationRequested,
    required TResult Function(LocationDetected value) locationDetected,
    required TResult Function(PermessionDenied value) permessionDenied,
  }) {
    return locationRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LocationRequested value)? locationRequested,
    TResult Function(LocationDetected value)? locationDetected,
    TResult Function(PermessionDenied value)? permessionDenied,
  }) {
    return locationRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocationRequested value)? locationRequested,
    TResult Function(LocationDetected value)? locationDetected,
    TResult Function(PermessionDenied value)? permessionDenied,
    required TResult orElse(),
  }) {
    if (locationRequested != null) {
      return locationRequested(this);
    }
    return orElse();
  }
}

abstract class LocationRequested implements LocationEvent {
  const factory LocationRequested() = _$LocationRequested;
}

/// @nodoc
abstract class $LocationDetectedCopyWith<$Res> {
  factory $LocationDetectedCopyWith(
          LocationDetected value, $Res Function(LocationDetected) then) =
      _$LocationDetectedCopyWithImpl<$Res>;
}

/// @nodoc
class _$LocationDetectedCopyWithImpl<$Res>
    extends _$LocationEventCopyWithImpl<$Res>
    implements $LocationDetectedCopyWith<$Res> {
  _$LocationDetectedCopyWithImpl(
      LocationDetected _value, $Res Function(LocationDetected) _then)
      : super(_value, (v) => _then(v as LocationDetected));

  @override
  LocationDetected get _value => super._value as LocationDetected;
}

/// @nodoc

class _$LocationDetected implements LocationDetected {
  const _$LocationDetected();

  @override
  String toString() {
    return 'LocationEvent.locationDetected()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LocationDetected);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() locationRequested,
    required TResult Function() locationDetected,
    required TResult Function() permessionDenied,
  }) {
    return locationDetected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? locationRequested,
    TResult Function()? locationDetected,
    TResult Function()? permessionDenied,
  }) {
    return locationDetected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? locationRequested,
    TResult Function()? locationDetected,
    TResult Function()? permessionDenied,
    required TResult orElse(),
  }) {
    if (locationDetected != null) {
      return locationDetected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocationRequested value) locationRequested,
    required TResult Function(LocationDetected value) locationDetected,
    required TResult Function(PermessionDenied value) permessionDenied,
  }) {
    return locationDetected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LocationRequested value)? locationRequested,
    TResult Function(LocationDetected value)? locationDetected,
    TResult Function(PermessionDenied value)? permessionDenied,
  }) {
    return locationDetected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocationRequested value)? locationRequested,
    TResult Function(LocationDetected value)? locationDetected,
    TResult Function(PermessionDenied value)? permessionDenied,
    required TResult orElse(),
  }) {
    if (locationDetected != null) {
      return locationDetected(this);
    }
    return orElse();
  }
}

abstract class LocationDetected implements LocationEvent {
  const factory LocationDetected() = _$LocationDetected;
}

/// @nodoc
abstract class $PermessionDeniedCopyWith<$Res> {
  factory $PermessionDeniedCopyWith(
          PermessionDenied value, $Res Function(PermessionDenied) then) =
      _$PermessionDeniedCopyWithImpl<$Res>;
}

/// @nodoc
class _$PermessionDeniedCopyWithImpl<$Res>
    extends _$LocationEventCopyWithImpl<$Res>
    implements $PermessionDeniedCopyWith<$Res> {
  _$PermessionDeniedCopyWithImpl(
      PermessionDenied _value, $Res Function(PermessionDenied) _then)
      : super(_value, (v) => _then(v as PermessionDenied));

  @override
  PermessionDenied get _value => super._value as PermessionDenied;
}

/// @nodoc

class _$PermessionDenied implements PermessionDenied {
  const _$PermessionDenied();

  @override
  String toString() {
    return 'LocationEvent.permessionDenied()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is PermessionDenied);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() locationRequested,
    required TResult Function() locationDetected,
    required TResult Function() permessionDenied,
  }) {
    return permessionDenied();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? locationRequested,
    TResult Function()? locationDetected,
    TResult Function()? permessionDenied,
  }) {
    return permessionDenied?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? locationRequested,
    TResult Function()? locationDetected,
    TResult Function()? permessionDenied,
    required TResult orElse(),
  }) {
    if (permessionDenied != null) {
      return permessionDenied();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocationRequested value) locationRequested,
    required TResult Function(LocationDetected value) locationDetected,
    required TResult Function(PermessionDenied value) permessionDenied,
  }) {
    return permessionDenied(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LocationRequested value)? locationRequested,
    TResult Function(LocationDetected value)? locationDetected,
    TResult Function(PermessionDenied value)? permessionDenied,
  }) {
    return permessionDenied?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocationRequested value)? locationRequested,
    TResult Function(LocationDetected value)? locationDetected,
    TResult Function(PermessionDenied value)? permessionDenied,
    required TResult orElse(),
  }) {
    if (permessionDenied != null) {
      return permessionDenied(this);
    }
    return orElse();
  }
}

abstract class PermessionDenied implements LocationEvent {
  const factory PermessionDenied() = _$PermessionDenied;
}

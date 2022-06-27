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
}

/// @nodoc
const $DriverEvent = _$DriverEventTearOff();

/// @nodoc
mixin _$DriverEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onlineActivated,
    required TResult Function() onlineDeactivated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? onlineActivated,
    TResult Function()? onlineDeactivated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onlineActivated,
    TResult Function()? onlineDeactivated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnlineActivated value) onlineActivated,
    required TResult Function(OnlineDeactivated value) onlineDeactivated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnlineActivated value)? onlineActivated,
    TResult Function(OnlineDeactivated value)? onlineDeactivated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnlineActivated value)? onlineActivated,
    TResult Function(OnlineDeactivated value)? onlineDeactivated,
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
  }) {
    return onlineActivated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? onlineActivated,
    TResult Function()? onlineDeactivated,
  }) {
    return onlineActivated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onlineActivated,
    TResult Function()? onlineDeactivated,
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
  }) {
    return onlineActivated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnlineActivated value)? onlineActivated,
    TResult Function(OnlineDeactivated value)? onlineDeactivated,
  }) {
    return onlineActivated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnlineActivated value)? onlineActivated,
    TResult Function(OnlineDeactivated value)? onlineDeactivated,
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
  }) {
    return onlineDeactivated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? onlineActivated,
    TResult Function()? onlineDeactivated,
  }) {
    return onlineDeactivated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onlineActivated,
    TResult Function()? onlineDeactivated,
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
  }) {
    return onlineDeactivated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnlineActivated value)? onlineActivated,
    TResult Function(OnlineDeactivated value)? onlineDeactivated,
  }) {
    return onlineDeactivated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnlineActivated value)? onlineActivated,
    TResult Function(OnlineDeactivated value)? onlineDeactivated,
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

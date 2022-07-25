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

  DriverArrived driverArrived(Ride ride, Duration driverArrivalDuration) {
    return DriverArrived(
      ride,
      driverArrivalDuration,
    );
  }

  RideCancelledByUser rideCancelledByUser() {
    return const RideCancelledByUser();
  }

  RideCancelledByDriver rideCancelledByDriver() {
    return const RideCancelledByDriver();
  }

  RideStarted rideStarted() {
    return const RideStarted();
  }

  UserPicked userPicked() {
    return const UserPicked();
  }

  RideFinished rideFinished() {
    return const RideFinished();
  }

  RideDnied rideDenied() {
    return const RideDnied();
  }

  DriverCancellTimeOff driverCancellTimeOff() {
    return const DriverCancellTimeOff();
  }

  RideInitilialized rideInitialized(String rideId) {
    return RideInitilialized(
      rideId,
    );
  }
}

/// @nodoc
const $RideEvent = _$RideEventTearOff();

/// @nodoc
mixin _$RideEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() rideAccepted,
    required TResult Function(Ride ride, Duration driverArrivalDuration)
        driverArrived,
    required TResult Function() rideCancelledByUser,
    required TResult Function() rideCancelledByDriver,
    required TResult Function() rideStarted,
    required TResult Function() userPicked,
    required TResult Function() rideFinished,
    required TResult Function() rideDenied,
    required TResult Function() driverCancellTimeOff,
    required TResult Function(String rideId) rideInitialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? rideAccepted,
    TResult Function(Ride ride, Duration driverArrivalDuration)? driverArrived,
    TResult Function()? rideCancelledByUser,
    TResult Function()? rideCancelledByDriver,
    TResult Function()? rideStarted,
    TResult Function()? userPicked,
    TResult Function()? rideFinished,
    TResult Function()? rideDenied,
    TResult Function()? driverCancellTimeOff,
    TResult Function(String rideId)? rideInitialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? rideAccepted,
    TResult Function(Ride ride, Duration driverArrivalDuration)? driverArrived,
    TResult Function()? rideCancelledByUser,
    TResult Function()? rideCancelledByDriver,
    TResult Function()? rideStarted,
    TResult Function()? userPicked,
    TResult Function()? rideFinished,
    TResult Function()? rideDenied,
    TResult Function()? driverCancellTimeOff,
    TResult Function(String rideId)? rideInitialized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RideAccepted value) rideAccepted,
    required TResult Function(DriverArrived value) driverArrived,
    required TResult Function(RideCancelledByUser value) rideCancelledByUser,
    required TResult Function(RideCancelledByDriver value)
        rideCancelledByDriver,
    required TResult Function(RideStarted value) rideStarted,
    required TResult Function(UserPicked value) userPicked,
    required TResult Function(RideFinished value) rideFinished,
    required TResult Function(RideDnied value) rideDenied,
    required TResult Function(DriverCancellTimeOff value) driverCancellTimeOff,
    required TResult Function(RideInitilialized value) rideInitialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RideAccepted value)? rideAccepted,
    TResult Function(DriverArrived value)? driverArrived,
    TResult Function(RideCancelledByUser value)? rideCancelledByUser,
    TResult Function(RideCancelledByDriver value)? rideCancelledByDriver,
    TResult Function(RideStarted value)? rideStarted,
    TResult Function(UserPicked value)? userPicked,
    TResult Function(RideFinished value)? rideFinished,
    TResult Function(RideDnied value)? rideDenied,
    TResult Function(DriverCancellTimeOff value)? driverCancellTimeOff,
    TResult Function(RideInitilialized value)? rideInitialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RideAccepted value)? rideAccepted,
    TResult Function(DriverArrived value)? driverArrived,
    TResult Function(RideCancelledByUser value)? rideCancelledByUser,
    TResult Function(RideCancelledByDriver value)? rideCancelledByDriver,
    TResult Function(RideStarted value)? rideStarted,
    TResult Function(UserPicked value)? userPicked,
    TResult Function(RideFinished value)? rideFinished,
    TResult Function(RideDnied value)? rideDenied,
    TResult Function(DriverCancellTimeOff value)? driverCancellTimeOff,
    TResult Function(RideInitilialized value)? rideInitialized,
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

class _$RideAccepted with DiagnosticableTreeMixin implements RideAccepted {
  const _$RideAccepted();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RideEvent.rideAccepted()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'RideEvent.rideAccepted'));
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
    required TResult Function(Ride ride, Duration driverArrivalDuration)
        driverArrived,
    required TResult Function() rideCancelledByUser,
    required TResult Function() rideCancelledByDriver,
    required TResult Function() rideStarted,
    required TResult Function() userPicked,
    required TResult Function() rideFinished,
    required TResult Function() rideDenied,
    required TResult Function() driverCancellTimeOff,
    required TResult Function(String rideId) rideInitialized,
  }) {
    return rideAccepted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? rideAccepted,
    TResult Function(Ride ride, Duration driverArrivalDuration)? driverArrived,
    TResult Function()? rideCancelledByUser,
    TResult Function()? rideCancelledByDriver,
    TResult Function()? rideStarted,
    TResult Function()? userPicked,
    TResult Function()? rideFinished,
    TResult Function()? rideDenied,
    TResult Function()? driverCancellTimeOff,
    TResult Function(String rideId)? rideInitialized,
  }) {
    return rideAccepted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? rideAccepted,
    TResult Function(Ride ride, Duration driverArrivalDuration)? driverArrived,
    TResult Function()? rideCancelledByUser,
    TResult Function()? rideCancelledByDriver,
    TResult Function()? rideStarted,
    TResult Function()? userPicked,
    TResult Function()? rideFinished,
    TResult Function()? rideDenied,
    TResult Function()? driverCancellTimeOff,
    TResult Function(String rideId)? rideInitialized,
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
    required TResult Function(DriverArrived value) driverArrived,
    required TResult Function(RideCancelledByUser value) rideCancelledByUser,
    required TResult Function(RideCancelledByDriver value)
        rideCancelledByDriver,
    required TResult Function(RideStarted value) rideStarted,
    required TResult Function(UserPicked value) userPicked,
    required TResult Function(RideFinished value) rideFinished,
    required TResult Function(RideDnied value) rideDenied,
    required TResult Function(DriverCancellTimeOff value) driverCancellTimeOff,
    required TResult Function(RideInitilialized value) rideInitialized,
  }) {
    return rideAccepted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RideAccepted value)? rideAccepted,
    TResult Function(DriverArrived value)? driverArrived,
    TResult Function(RideCancelledByUser value)? rideCancelledByUser,
    TResult Function(RideCancelledByDriver value)? rideCancelledByDriver,
    TResult Function(RideStarted value)? rideStarted,
    TResult Function(UserPicked value)? userPicked,
    TResult Function(RideFinished value)? rideFinished,
    TResult Function(RideDnied value)? rideDenied,
    TResult Function(DriverCancellTimeOff value)? driverCancellTimeOff,
    TResult Function(RideInitilialized value)? rideInitialized,
  }) {
    return rideAccepted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RideAccepted value)? rideAccepted,
    TResult Function(DriverArrived value)? driverArrived,
    TResult Function(RideCancelledByUser value)? rideCancelledByUser,
    TResult Function(RideCancelledByDriver value)? rideCancelledByDriver,
    TResult Function(RideStarted value)? rideStarted,
    TResult Function(UserPicked value)? userPicked,
    TResult Function(RideFinished value)? rideFinished,
    TResult Function(RideDnied value)? rideDenied,
    TResult Function(DriverCancellTimeOff value)? driverCancellTimeOff,
    TResult Function(RideInitilialized value)? rideInitialized,
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
abstract class $DriverArrivedCopyWith<$Res> {
  factory $DriverArrivedCopyWith(
          DriverArrived value, $Res Function(DriverArrived) then) =
      _$DriverArrivedCopyWithImpl<$Res>;
  $Res call({Ride ride, Duration driverArrivalDuration});

  $RideCopyWith<$Res> get ride;
}

/// @nodoc
class _$DriverArrivedCopyWithImpl<$Res> extends _$RideEventCopyWithImpl<$Res>
    implements $DriverArrivedCopyWith<$Res> {
  _$DriverArrivedCopyWithImpl(
      DriverArrived _value, $Res Function(DriverArrived) _then)
      : super(_value, (v) => _then(v as DriverArrived));

  @override
  DriverArrived get _value => super._value as DriverArrived;

  @override
  $Res call({
    Object? ride = freezed,
    Object? driverArrivalDuration = freezed,
  }) {
    return _then(DriverArrived(
      ride == freezed
          ? _value.ride
          : ride // ignore: cast_nullable_to_non_nullable
              as Ride,
      driverArrivalDuration == freezed
          ? _value.driverArrivalDuration
          : driverArrivalDuration // ignore: cast_nullable_to_non_nullable
              as Duration,
    ));
  }

  @override
  $RideCopyWith<$Res> get ride {
    return $RideCopyWith<$Res>(_value.ride, (value) {
      return _then(_value.copyWith(ride: value));
    });
  }
}

/// @nodoc

class _$DriverArrived with DiagnosticableTreeMixin implements DriverArrived {
  const _$DriverArrived(this.ride, this.driverArrivalDuration);

  @override
  final Ride ride;
  @override
  final Duration driverArrivalDuration;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RideEvent.driverArrived(ride: $ride, driverArrivalDuration: $driverArrivalDuration)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RideEvent.driverArrived'))
      ..add(DiagnosticsProperty('ride', ride))
      ..add(
          DiagnosticsProperty('driverArrivalDuration', driverArrivalDuration));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DriverArrived &&
            const DeepCollectionEquality().equals(other.ride, ride) &&
            const DeepCollectionEquality()
                .equals(other.driverArrivalDuration, driverArrivalDuration));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(ride),
      const DeepCollectionEquality().hash(driverArrivalDuration));

  @JsonKey(ignore: true)
  @override
  $DriverArrivedCopyWith<DriverArrived> get copyWith =>
      _$DriverArrivedCopyWithImpl<DriverArrived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() rideAccepted,
    required TResult Function(Ride ride, Duration driverArrivalDuration)
        driverArrived,
    required TResult Function() rideCancelledByUser,
    required TResult Function() rideCancelledByDriver,
    required TResult Function() rideStarted,
    required TResult Function() userPicked,
    required TResult Function() rideFinished,
    required TResult Function() rideDenied,
    required TResult Function() driverCancellTimeOff,
    required TResult Function(String rideId) rideInitialized,
  }) {
    return driverArrived(ride, driverArrivalDuration);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? rideAccepted,
    TResult Function(Ride ride, Duration driverArrivalDuration)? driverArrived,
    TResult Function()? rideCancelledByUser,
    TResult Function()? rideCancelledByDriver,
    TResult Function()? rideStarted,
    TResult Function()? userPicked,
    TResult Function()? rideFinished,
    TResult Function()? rideDenied,
    TResult Function()? driverCancellTimeOff,
    TResult Function(String rideId)? rideInitialized,
  }) {
    return driverArrived?.call(ride, driverArrivalDuration);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? rideAccepted,
    TResult Function(Ride ride, Duration driverArrivalDuration)? driverArrived,
    TResult Function()? rideCancelledByUser,
    TResult Function()? rideCancelledByDriver,
    TResult Function()? rideStarted,
    TResult Function()? userPicked,
    TResult Function()? rideFinished,
    TResult Function()? rideDenied,
    TResult Function()? driverCancellTimeOff,
    TResult Function(String rideId)? rideInitialized,
    required TResult orElse(),
  }) {
    if (driverArrived != null) {
      return driverArrived(ride, driverArrivalDuration);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RideAccepted value) rideAccepted,
    required TResult Function(DriverArrived value) driverArrived,
    required TResult Function(RideCancelledByUser value) rideCancelledByUser,
    required TResult Function(RideCancelledByDriver value)
        rideCancelledByDriver,
    required TResult Function(RideStarted value) rideStarted,
    required TResult Function(UserPicked value) userPicked,
    required TResult Function(RideFinished value) rideFinished,
    required TResult Function(RideDnied value) rideDenied,
    required TResult Function(DriverCancellTimeOff value) driverCancellTimeOff,
    required TResult Function(RideInitilialized value) rideInitialized,
  }) {
    return driverArrived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RideAccepted value)? rideAccepted,
    TResult Function(DriverArrived value)? driverArrived,
    TResult Function(RideCancelledByUser value)? rideCancelledByUser,
    TResult Function(RideCancelledByDriver value)? rideCancelledByDriver,
    TResult Function(RideStarted value)? rideStarted,
    TResult Function(UserPicked value)? userPicked,
    TResult Function(RideFinished value)? rideFinished,
    TResult Function(RideDnied value)? rideDenied,
    TResult Function(DriverCancellTimeOff value)? driverCancellTimeOff,
    TResult Function(RideInitilialized value)? rideInitialized,
  }) {
    return driverArrived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RideAccepted value)? rideAccepted,
    TResult Function(DriverArrived value)? driverArrived,
    TResult Function(RideCancelledByUser value)? rideCancelledByUser,
    TResult Function(RideCancelledByDriver value)? rideCancelledByDriver,
    TResult Function(RideStarted value)? rideStarted,
    TResult Function(UserPicked value)? userPicked,
    TResult Function(RideFinished value)? rideFinished,
    TResult Function(RideDnied value)? rideDenied,
    TResult Function(DriverCancellTimeOff value)? driverCancellTimeOff,
    TResult Function(RideInitilialized value)? rideInitialized,
    required TResult orElse(),
  }) {
    if (driverArrived != null) {
      return driverArrived(this);
    }
    return orElse();
  }
}

abstract class DriverArrived implements RideEvent {
  const factory DriverArrived(Ride ride, Duration driverArrivalDuration) =
      _$DriverArrived;

  Ride get ride;
  Duration get driverArrivalDuration;
  @JsonKey(ignore: true)
  $DriverArrivedCopyWith<DriverArrived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RideCancelledByUserCopyWith<$Res> {
  factory $RideCancelledByUserCopyWith(
          RideCancelledByUser value, $Res Function(RideCancelledByUser) then) =
      _$RideCancelledByUserCopyWithImpl<$Res>;
}

/// @nodoc
class _$RideCancelledByUserCopyWithImpl<$Res>
    extends _$RideEventCopyWithImpl<$Res>
    implements $RideCancelledByUserCopyWith<$Res> {
  _$RideCancelledByUserCopyWithImpl(
      RideCancelledByUser _value, $Res Function(RideCancelledByUser) _then)
      : super(_value, (v) => _then(v as RideCancelledByUser));

  @override
  RideCancelledByUser get _value => super._value as RideCancelledByUser;
}

/// @nodoc

class _$RideCancelledByUser
    with DiagnosticableTreeMixin
    implements RideCancelledByUser {
  const _$RideCancelledByUser();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RideEvent.rideCancelledByUser()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RideEvent.rideCancelledByUser'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is RideCancelledByUser);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() rideAccepted,
    required TResult Function(Ride ride, Duration driverArrivalDuration)
        driverArrived,
    required TResult Function() rideCancelledByUser,
    required TResult Function() rideCancelledByDriver,
    required TResult Function() rideStarted,
    required TResult Function() userPicked,
    required TResult Function() rideFinished,
    required TResult Function() rideDenied,
    required TResult Function() driverCancellTimeOff,
    required TResult Function(String rideId) rideInitialized,
  }) {
    return rideCancelledByUser();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? rideAccepted,
    TResult Function(Ride ride, Duration driverArrivalDuration)? driverArrived,
    TResult Function()? rideCancelledByUser,
    TResult Function()? rideCancelledByDriver,
    TResult Function()? rideStarted,
    TResult Function()? userPicked,
    TResult Function()? rideFinished,
    TResult Function()? rideDenied,
    TResult Function()? driverCancellTimeOff,
    TResult Function(String rideId)? rideInitialized,
  }) {
    return rideCancelledByUser?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? rideAccepted,
    TResult Function(Ride ride, Duration driverArrivalDuration)? driverArrived,
    TResult Function()? rideCancelledByUser,
    TResult Function()? rideCancelledByDriver,
    TResult Function()? rideStarted,
    TResult Function()? userPicked,
    TResult Function()? rideFinished,
    TResult Function()? rideDenied,
    TResult Function()? driverCancellTimeOff,
    TResult Function(String rideId)? rideInitialized,
    required TResult orElse(),
  }) {
    if (rideCancelledByUser != null) {
      return rideCancelledByUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RideAccepted value) rideAccepted,
    required TResult Function(DriverArrived value) driverArrived,
    required TResult Function(RideCancelledByUser value) rideCancelledByUser,
    required TResult Function(RideCancelledByDriver value)
        rideCancelledByDriver,
    required TResult Function(RideStarted value) rideStarted,
    required TResult Function(UserPicked value) userPicked,
    required TResult Function(RideFinished value) rideFinished,
    required TResult Function(RideDnied value) rideDenied,
    required TResult Function(DriverCancellTimeOff value) driverCancellTimeOff,
    required TResult Function(RideInitilialized value) rideInitialized,
  }) {
    return rideCancelledByUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RideAccepted value)? rideAccepted,
    TResult Function(DriverArrived value)? driverArrived,
    TResult Function(RideCancelledByUser value)? rideCancelledByUser,
    TResult Function(RideCancelledByDriver value)? rideCancelledByDriver,
    TResult Function(RideStarted value)? rideStarted,
    TResult Function(UserPicked value)? userPicked,
    TResult Function(RideFinished value)? rideFinished,
    TResult Function(RideDnied value)? rideDenied,
    TResult Function(DriverCancellTimeOff value)? driverCancellTimeOff,
    TResult Function(RideInitilialized value)? rideInitialized,
  }) {
    return rideCancelledByUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RideAccepted value)? rideAccepted,
    TResult Function(DriverArrived value)? driverArrived,
    TResult Function(RideCancelledByUser value)? rideCancelledByUser,
    TResult Function(RideCancelledByDriver value)? rideCancelledByDriver,
    TResult Function(RideStarted value)? rideStarted,
    TResult Function(UserPicked value)? userPicked,
    TResult Function(RideFinished value)? rideFinished,
    TResult Function(RideDnied value)? rideDenied,
    TResult Function(DriverCancellTimeOff value)? driverCancellTimeOff,
    TResult Function(RideInitilialized value)? rideInitialized,
    required TResult orElse(),
  }) {
    if (rideCancelledByUser != null) {
      return rideCancelledByUser(this);
    }
    return orElse();
  }
}

abstract class RideCancelledByUser implements RideEvent {
  const factory RideCancelledByUser() = _$RideCancelledByUser;
}

/// @nodoc
abstract class $RideCancelledByDriverCopyWith<$Res> {
  factory $RideCancelledByDriverCopyWith(RideCancelledByDriver value,
          $Res Function(RideCancelledByDriver) then) =
      _$RideCancelledByDriverCopyWithImpl<$Res>;
}

/// @nodoc
class _$RideCancelledByDriverCopyWithImpl<$Res>
    extends _$RideEventCopyWithImpl<$Res>
    implements $RideCancelledByDriverCopyWith<$Res> {
  _$RideCancelledByDriverCopyWithImpl(
      RideCancelledByDriver _value, $Res Function(RideCancelledByDriver) _then)
      : super(_value, (v) => _then(v as RideCancelledByDriver));

  @override
  RideCancelledByDriver get _value => super._value as RideCancelledByDriver;
}

/// @nodoc

class _$RideCancelledByDriver
    with DiagnosticableTreeMixin
    implements RideCancelledByDriver {
  const _$RideCancelledByDriver();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RideEvent.rideCancelledByDriver()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RideEvent.rideCancelledByDriver'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is RideCancelledByDriver);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() rideAccepted,
    required TResult Function(Ride ride, Duration driverArrivalDuration)
        driverArrived,
    required TResult Function() rideCancelledByUser,
    required TResult Function() rideCancelledByDriver,
    required TResult Function() rideStarted,
    required TResult Function() userPicked,
    required TResult Function() rideFinished,
    required TResult Function() rideDenied,
    required TResult Function() driverCancellTimeOff,
    required TResult Function(String rideId) rideInitialized,
  }) {
    return rideCancelledByDriver();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? rideAccepted,
    TResult Function(Ride ride, Duration driverArrivalDuration)? driverArrived,
    TResult Function()? rideCancelledByUser,
    TResult Function()? rideCancelledByDriver,
    TResult Function()? rideStarted,
    TResult Function()? userPicked,
    TResult Function()? rideFinished,
    TResult Function()? rideDenied,
    TResult Function()? driverCancellTimeOff,
    TResult Function(String rideId)? rideInitialized,
  }) {
    return rideCancelledByDriver?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? rideAccepted,
    TResult Function(Ride ride, Duration driverArrivalDuration)? driverArrived,
    TResult Function()? rideCancelledByUser,
    TResult Function()? rideCancelledByDriver,
    TResult Function()? rideStarted,
    TResult Function()? userPicked,
    TResult Function()? rideFinished,
    TResult Function()? rideDenied,
    TResult Function()? driverCancellTimeOff,
    TResult Function(String rideId)? rideInitialized,
    required TResult orElse(),
  }) {
    if (rideCancelledByDriver != null) {
      return rideCancelledByDriver();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RideAccepted value) rideAccepted,
    required TResult Function(DriverArrived value) driverArrived,
    required TResult Function(RideCancelledByUser value) rideCancelledByUser,
    required TResult Function(RideCancelledByDriver value)
        rideCancelledByDriver,
    required TResult Function(RideStarted value) rideStarted,
    required TResult Function(UserPicked value) userPicked,
    required TResult Function(RideFinished value) rideFinished,
    required TResult Function(RideDnied value) rideDenied,
    required TResult Function(DriverCancellTimeOff value) driverCancellTimeOff,
    required TResult Function(RideInitilialized value) rideInitialized,
  }) {
    return rideCancelledByDriver(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RideAccepted value)? rideAccepted,
    TResult Function(DriverArrived value)? driverArrived,
    TResult Function(RideCancelledByUser value)? rideCancelledByUser,
    TResult Function(RideCancelledByDriver value)? rideCancelledByDriver,
    TResult Function(RideStarted value)? rideStarted,
    TResult Function(UserPicked value)? userPicked,
    TResult Function(RideFinished value)? rideFinished,
    TResult Function(RideDnied value)? rideDenied,
    TResult Function(DriverCancellTimeOff value)? driverCancellTimeOff,
    TResult Function(RideInitilialized value)? rideInitialized,
  }) {
    return rideCancelledByDriver?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RideAccepted value)? rideAccepted,
    TResult Function(DriverArrived value)? driverArrived,
    TResult Function(RideCancelledByUser value)? rideCancelledByUser,
    TResult Function(RideCancelledByDriver value)? rideCancelledByDriver,
    TResult Function(RideStarted value)? rideStarted,
    TResult Function(UserPicked value)? userPicked,
    TResult Function(RideFinished value)? rideFinished,
    TResult Function(RideDnied value)? rideDenied,
    TResult Function(DriverCancellTimeOff value)? driverCancellTimeOff,
    TResult Function(RideInitilialized value)? rideInitialized,
    required TResult orElse(),
  }) {
    if (rideCancelledByDriver != null) {
      return rideCancelledByDriver(this);
    }
    return orElse();
  }
}

abstract class RideCancelledByDriver implements RideEvent {
  const factory RideCancelledByDriver() = _$RideCancelledByDriver;
}

/// @nodoc
abstract class $RideStartedCopyWith<$Res> {
  factory $RideStartedCopyWith(
          RideStarted value, $Res Function(RideStarted) then) =
      _$RideStartedCopyWithImpl<$Res>;
}

/// @nodoc
class _$RideStartedCopyWithImpl<$Res> extends _$RideEventCopyWithImpl<$Res>
    implements $RideStartedCopyWith<$Res> {
  _$RideStartedCopyWithImpl(
      RideStarted _value, $Res Function(RideStarted) _then)
      : super(_value, (v) => _then(v as RideStarted));

  @override
  RideStarted get _value => super._value as RideStarted;
}

/// @nodoc

class _$RideStarted with DiagnosticableTreeMixin implements RideStarted {
  const _$RideStarted();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RideEvent.rideStarted()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'RideEvent.rideStarted'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is RideStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() rideAccepted,
    required TResult Function(Ride ride, Duration driverArrivalDuration)
        driverArrived,
    required TResult Function() rideCancelledByUser,
    required TResult Function() rideCancelledByDriver,
    required TResult Function() rideStarted,
    required TResult Function() userPicked,
    required TResult Function() rideFinished,
    required TResult Function() rideDenied,
    required TResult Function() driverCancellTimeOff,
    required TResult Function(String rideId) rideInitialized,
  }) {
    return rideStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? rideAccepted,
    TResult Function(Ride ride, Duration driverArrivalDuration)? driverArrived,
    TResult Function()? rideCancelledByUser,
    TResult Function()? rideCancelledByDriver,
    TResult Function()? rideStarted,
    TResult Function()? userPicked,
    TResult Function()? rideFinished,
    TResult Function()? rideDenied,
    TResult Function()? driverCancellTimeOff,
    TResult Function(String rideId)? rideInitialized,
  }) {
    return rideStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? rideAccepted,
    TResult Function(Ride ride, Duration driverArrivalDuration)? driverArrived,
    TResult Function()? rideCancelledByUser,
    TResult Function()? rideCancelledByDriver,
    TResult Function()? rideStarted,
    TResult Function()? userPicked,
    TResult Function()? rideFinished,
    TResult Function()? rideDenied,
    TResult Function()? driverCancellTimeOff,
    TResult Function(String rideId)? rideInitialized,
    required TResult orElse(),
  }) {
    if (rideStarted != null) {
      return rideStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RideAccepted value) rideAccepted,
    required TResult Function(DriverArrived value) driverArrived,
    required TResult Function(RideCancelledByUser value) rideCancelledByUser,
    required TResult Function(RideCancelledByDriver value)
        rideCancelledByDriver,
    required TResult Function(RideStarted value) rideStarted,
    required TResult Function(UserPicked value) userPicked,
    required TResult Function(RideFinished value) rideFinished,
    required TResult Function(RideDnied value) rideDenied,
    required TResult Function(DriverCancellTimeOff value) driverCancellTimeOff,
    required TResult Function(RideInitilialized value) rideInitialized,
  }) {
    return rideStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RideAccepted value)? rideAccepted,
    TResult Function(DriverArrived value)? driverArrived,
    TResult Function(RideCancelledByUser value)? rideCancelledByUser,
    TResult Function(RideCancelledByDriver value)? rideCancelledByDriver,
    TResult Function(RideStarted value)? rideStarted,
    TResult Function(UserPicked value)? userPicked,
    TResult Function(RideFinished value)? rideFinished,
    TResult Function(RideDnied value)? rideDenied,
    TResult Function(DriverCancellTimeOff value)? driverCancellTimeOff,
    TResult Function(RideInitilialized value)? rideInitialized,
  }) {
    return rideStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RideAccepted value)? rideAccepted,
    TResult Function(DriverArrived value)? driverArrived,
    TResult Function(RideCancelledByUser value)? rideCancelledByUser,
    TResult Function(RideCancelledByDriver value)? rideCancelledByDriver,
    TResult Function(RideStarted value)? rideStarted,
    TResult Function(UserPicked value)? userPicked,
    TResult Function(RideFinished value)? rideFinished,
    TResult Function(RideDnied value)? rideDenied,
    TResult Function(DriverCancellTimeOff value)? driverCancellTimeOff,
    TResult Function(RideInitilialized value)? rideInitialized,
    required TResult orElse(),
  }) {
    if (rideStarted != null) {
      return rideStarted(this);
    }
    return orElse();
  }
}

abstract class RideStarted implements RideEvent {
  const factory RideStarted() = _$RideStarted;
}

/// @nodoc
abstract class $UserPickedCopyWith<$Res> {
  factory $UserPickedCopyWith(
          UserPicked value, $Res Function(UserPicked) then) =
      _$UserPickedCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserPickedCopyWithImpl<$Res> extends _$RideEventCopyWithImpl<$Res>
    implements $UserPickedCopyWith<$Res> {
  _$UserPickedCopyWithImpl(UserPicked _value, $Res Function(UserPicked) _then)
      : super(_value, (v) => _then(v as UserPicked));

  @override
  UserPicked get _value => super._value as UserPicked;
}

/// @nodoc

class _$UserPicked with DiagnosticableTreeMixin implements UserPicked {
  const _$UserPicked();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RideEvent.userPicked()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'RideEvent.userPicked'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is UserPicked);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() rideAccepted,
    required TResult Function(Ride ride, Duration driverArrivalDuration)
        driverArrived,
    required TResult Function() rideCancelledByUser,
    required TResult Function() rideCancelledByDriver,
    required TResult Function() rideStarted,
    required TResult Function() userPicked,
    required TResult Function() rideFinished,
    required TResult Function() rideDenied,
    required TResult Function() driverCancellTimeOff,
    required TResult Function(String rideId) rideInitialized,
  }) {
    return userPicked();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? rideAccepted,
    TResult Function(Ride ride, Duration driverArrivalDuration)? driverArrived,
    TResult Function()? rideCancelledByUser,
    TResult Function()? rideCancelledByDriver,
    TResult Function()? rideStarted,
    TResult Function()? userPicked,
    TResult Function()? rideFinished,
    TResult Function()? rideDenied,
    TResult Function()? driverCancellTimeOff,
    TResult Function(String rideId)? rideInitialized,
  }) {
    return userPicked?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? rideAccepted,
    TResult Function(Ride ride, Duration driverArrivalDuration)? driverArrived,
    TResult Function()? rideCancelledByUser,
    TResult Function()? rideCancelledByDriver,
    TResult Function()? rideStarted,
    TResult Function()? userPicked,
    TResult Function()? rideFinished,
    TResult Function()? rideDenied,
    TResult Function()? driverCancellTimeOff,
    TResult Function(String rideId)? rideInitialized,
    required TResult orElse(),
  }) {
    if (userPicked != null) {
      return userPicked();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RideAccepted value) rideAccepted,
    required TResult Function(DriverArrived value) driverArrived,
    required TResult Function(RideCancelledByUser value) rideCancelledByUser,
    required TResult Function(RideCancelledByDriver value)
        rideCancelledByDriver,
    required TResult Function(RideStarted value) rideStarted,
    required TResult Function(UserPicked value) userPicked,
    required TResult Function(RideFinished value) rideFinished,
    required TResult Function(RideDnied value) rideDenied,
    required TResult Function(DriverCancellTimeOff value) driverCancellTimeOff,
    required TResult Function(RideInitilialized value) rideInitialized,
  }) {
    return userPicked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RideAccepted value)? rideAccepted,
    TResult Function(DriverArrived value)? driverArrived,
    TResult Function(RideCancelledByUser value)? rideCancelledByUser,
    TResult Function(RideCancelledByDriver value)? rideCancelledByDriver,
    TResult Function(RideStarted value)? rideStarted,
    TResult Function(UserPicked value)? userPicked,
    TResult Function(RideFinished value)? rideFinished,
    TResult Function(RideDnied value)? rideDenied,
    TResult Function(DriverCancellTimeOff value)? driverCancellTimeOff,
    TResult Function(RideInitilialized value)? rideInitialized,
  }) {
    return userPicked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RideAccepted value)? rideAccepted,
    TResult Function(DriverArrived value)? driverArrived,
    TResult Function(RideCancelledByUser value)? rideCancelledByUser,
    TResult Function(RideCancelledByDriver value)? rideCancelledByDriver,
    TResult Function(RideStarted value)? rideStarted,
    TResult Function(UserPicked value)? userPicked,
    TResult Function(RideFinished value)? rideFinished,
    TResult Function(RideDnied value)? rideDenied,
    TResult Function(DriverCancellTimeOff value)? driverCancellTimeOff,
    TResult Function(RideInitilialized value)? rideInitialized,
    required TResult orElse(),
  }) {
    if (userPicked != null) {
      return userPicked(this);
    }
    return orElse();
  }
}

abstract class UserPicked implements RideEvent {
  const factory UserPicked() = _$UserPicked;
}

/// @nodoc
abstract class $RideFinishedCopyWith<$Res> {
  factory $RideFinishedCopyWith(
          RideFinished value, $Res Function(RideFinished) then) =
      _$RideFinishedCopyWithImpl<$Res>;
}

/// @nodoc
class _$RideFinishedCopyWithImpl<$Res> extends _$RideEventCopyWithImpl<$Res>
    implements $RideFinishedCopyWith<$Res> {
  _$RideFinishedCopyWithImpl(
      RideFinished _value, $Res Function(RideFinished) _then)
      : super(_value, (v) => _then(v as RideFinished));

  @override
  RideFinished get _value => super._value as RideFinished;
}

/// @nodoc

class _$RideFinished with DiagnosticableTreeMixin implements RideFinished {
  const _$RideFinished();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RideEvent.rideFinished()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'RideEvent.rideFinished'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is RideFinished);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() rideAccepted,
    required TResult Function(Ride ride, Duration driverArrivalDuration)
        driverArrived,
    required TResult Function() rideCancelledByUser,
    required TResult Function() rideCancelledByDriver,
    required TResult Function() rideStarted,
    required TResult Function() userPicked,
    required TResult Function() rideFinished,
    required TResult Function() rideDenied,
    required TResult Function() driverCancellTimeOff,
    required TResult Function(String rideId) rideInitialized,
  }) {
    return rideFinished();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? rideAccepted,
    TResult Function(Ride ride, Duration driverArrivalDuration)? driverArrived,
    TResult Function()? rideCancelledByUser,
    TResult Function()? rideCancelledByDriver,
    TResult Function()? rideStarted,
    TResult Function()? userPicked,
    TResult Function()? rideFinished,
    TResult Function()? rideDenied,
    TResult Function()? driverCancellTimeOff,
    TResult Function(String rideId)? rideInitialized,
  }) {
    return rideFinished?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? rideAccepted,
    TResult Function(Ride ride, Duration driverArrivalDuration)? driverArrived,
    TResult Function()? rideCancelledByUser,
    TResult Function()? rideCancelledByDriver,
    TResult Function()? rideStarted,
    TResult Function()? userPicked,
    TResult Function()? rideFinished,
    TResult Function()? rideDenied,
    TResult Function()? driverCancellTimeOff,
    TResult Function(String rideId)? rideInitialized,
    required TResult orElse(),
  }) {
    if (rideFinished != null) {
      return rideFinished();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RideAccepted value) rideAccepted,
    required TResult Function(DriverArrived value) driverArrived,
    required TResult Function(RideCancelledByUser value) rideCancelledByUser,
    required TResult Function(RideCancelledByDriver value)
        rideCancelledByDriver,
    required TResult Function(RideStarted value) rideStarted,
    required TResult Function(UserPicked value) userPicked,
    required TResult Function(RideFinished value) rideFinished,
    required TResult Function(RideDnied value) rideDenied,
    required TResult Function(DriverCancellTimeOff value) driverCancellTimeOff,
    required TResult Function(RideInitilialized value) rideInitialized,
  }) {
    return rideFinished(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RideAccepted value)? rideAccepted,
    TResult Function(DriverArrived value)? driverArrived,
    TResult Function(RideCancelledByUser value)? rideCancelledByUser,
    TResult Function(RideCancelledByDriver value)? rideCancelledByDriver,
    TResult Function(RideStarted value)? rideStarted,
    TResult Function(UserPicked value)? userPicked,
    TResult Function(RideFinished value)? rideFinished,
    TResult Function(RideDnied value)? rideDenied,
    TResult Function(DriverCancellTimeOff value)? driverCancellTimeOff,
    TResult Function(RideInitilialized value)? rideInitialized,
  }) {
    return rideFinished?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RideAccepted value)? rideAccepted,
    TResult Function(DriverArrived value)? driverArrived,
    TResult Function(RideCancelledByUser value)? rideCancelledByUser,
    TResult Function(RideCancelledByDriver value)? rideCancelledByDriver,
    TResult Function(RideStarted value)? rideStarted,
    TResult Function(UserPicked value)? userPicked,
    TResult Function(RideFinished value)? rideFinished,
    TResult Function(RideDnied value)? rideDenied,
    TResult Function(DriverCancellTimeOff value)? driverCancellTimeOff,
    TResult Function(RideInitilialized value)? rideInitialized,
    required TResult orElse(),
  }) {
    if (rideFinished != null) {
      return rideFinished(this);
    }
    return orElse();
  }
}

abstract class RideFinished implements RideEvent {
  const factory RideFinished() = _$RideFinished;
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

class _$RideDnied with DiagnosticableTreeMixin implements RideDnied {
  const _$RideDnied();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RideEvent.rideDenied()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'RideEvent.rideDenied'));
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
    required TResult Function(Ride ride, Duration driverArrivalDuration)
        driverArrived,
    required TResult Function() rideCancelledByUser,
    required TResult Function() rideCancelledByDriver,
    required TResult Function() rideStarted,
    required TResult Function() userPicked,
    required TResult Function() rideFinished,
    required TResult Function() rideDenied,
    required TResult Function() driverCancellTimeOff,
    required TResult Function(String rideId) rideInitialized,
  }) {
    return rideDenied();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? rideAccepted,
    TResult Function(Ride ride, Duration driverArrivalDuration)? driverArrived,
    TResult Function()? rideCancelledByUser,
    TResult Function()? rideCancelledByDriver,
    TResult Function()? rideStarted,
    TResult Function()? userPicked,
    TResult Function()? rideFinished,
    TResult Function()? rideDenied,
    TResult Function()? driverCancellTimeOff,
    TResult Function(String rideId)? rideInitialized,
  }) {
    return rideDenied?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? rideAccepted,
    TResult Function(Ride ride, Duration driverArrivalDuration)? driverArrived,
    TResult Function()? rideCancelledByUser,
    TResult Function()? rideCancelledByDriver,
    TResult Function()? rideStarted,
    TResult Function()? userPicked,
    TResult Function()? rideFinished,
    TResult Function()? rideDenied,
    TResult Function()? driverCancellTimeOff,
    TResult Function(String rideId)? rideInitialized,
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
    required TResult Function(DriverArrived value) driverArrived,
    required TResult Function(RideCancelledByUser value) rideCancelledByUser,
    required TResult Function(RideCancelledByDriver value)
        rideCancelledByDriver,
    required TResult Function(RideStarted value) rideStarted,
    required TResult Function(UserPicked value) userPicked,
    required TResult Function(RideFinished value) rideFinished,
    required TResult Function(RideDnied value) rideDenied,
    required TResult Function(DriverCancellTimeOff value) driverCancellTimeOff,
    required TResult Function(RideInitilialized value) rideInitialized,
  }) {
    return rideDenied(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RideAccepted value)? rideAccepted,
    TResult Function(DriverArrived value)? driverArrived,
    TResult Function(RideCancelledByUser value)? rideCancelledByUser,
    TResult Function(RideCancelledByDriver value)? rideCancelledByDriver,
    TResult Function(RideStarted value)? rideStarted,
    TResult Function(UserPicked value)? userPicked,
    TResult Function(RideFinished value)? rideFinished,
    TResult Function(RideDnied value)? rideDenied,
    TResult Function(DriverCancellTimeOff value)? driverCancellTimeOff,
    TResult Function(RideInitilialized value)? rideInitialized,
  }) {
    return rideDenied?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RideAccepted value)? rideAccepted,
    TResult Function(DriverArrived value)? driverArrived,
    TResult Function(RideCancelledByUser value)? rideCancelledByUser,
    TResult Function(RideCancelledByDriver value)? rideCancelledByDriver,
    TResult Function(RideStarted value)? rideStarted,
    TResult Function(UserPicked value)? userPicked,
    TResult Function(RideFinished value)? rideFinished,
    TResult Function(RideDnied value)? rideDenied,
    TResult Function(DriverCancellTimeOff value)? driverCancellTimeOff,
    TResult Function(RideInitilialized value)? rideInitialized,
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

/// @nodoc
abstract class $DriverCancellTimeOffCopyWith<$Res> {
  factory $DriverCancellTimeOffCopyWith(DriverCancellTimeOff value,
          $Res Function(DriverCancellTimeOff) then) =
      _$DriverCancellTimeOffCopyWithImpl<$Res>;
}

/// @nodoc
class _$DriverCancellTimeOffCopyWithImpl<$Res>
    extends _$RideEventCopyWithImpl<$Res>
    implements $DriverCancellTimeOffCopyWith<$Res> {
  _$DriverCancellTimeOffCopyWithImpl(
      DriverCancellTimeOff _value, $Res Function(DriverCancellTimeOff) _then)
      : super(_value, (v) => _then(v as DriverCancellTimeOff));

  @override
  DriverCancellTimeOff get _value => super._value as DriverCancellTimeOff;
}

/// @nodoc

class _$DriverCancellTimeOff
    with DiagnosticableTreeMixin
    implements DriverCancellTimeOff {
  const _$DriverCancellTimeOff();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RideEvent.driverCancellTimeOff()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RideEvent.driverCancellTimeOff'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is DriverCancellTimeOff);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() rideAccepted,
    required TResult Function(Ride ride, Duration driverArrivalDuration)
        driverArrived,
    required TResult Function() rideCancelledByUser,
    required TResult Function() rideCancelledByDriver,
    required TResult Function() rideStarted,
    required TResult Function() userPicked,
    required TResult Function() rideFinished,
    required TResult Function() rideDenied,
    required TResult Function() driverCancellTimeOff,
    required TResult Function(String rideId) rideInitialized,
  }) {
    return driverCancellTimeOff();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? rideAccepted,
    TResult Function(Ride ride, Duration driverArrivalDuration)? driverArrived,
    TResult Function()? rideCancelledByUser,
    TResult Function()? rideCancelledByDriver,
    TResult Function()? rideStarted,
    TResult Function()? userPicked,
    TResult Function()? rideFinished,
    TResult Function()? rideDenied,
    TResult Function()? driverCancellTimeOff,
    TResult Function(String rideId)? rideInitialized,
  }) {
    return driverCancellTimeOff?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? rideAccepted,
    TResult Function(Ride ride, Duration driverArrivalDuration)? driverArrived,
    TResult Function()? rideCancelledByUser,
    TResult Function()? rideCancelledByDriver,
    TResult Function()? rideStarted,
    TResult Function()? userPicked,
    TResult Function()? rideFinished,
    TResult Function()? rideDenied,
    TResult Function()? driverCancellTimeOff,
    TResult Function(String rideId)? rideInitialized,
    required TResult orElse(),
  }) {
    if (driverCancellTimeOff != null) {
      return driverCancellTimeOff();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RideAccepted value) rideAccepted,
    required TResult Function(DriverArrived value) driverArrived,
    required TResult Function(RideCancelledByUser value) rideCancelledByUser,
    required TResult Function(RideCancelledByDriver value)
        rideCancelledByDriver,
    required TResult Function(RideStarted value) rideStarted,
    required TResult Function(UserPicked value) userPicked,
    required TResult Function(RideFinished value) rideFinished,
    required TResult Function(RideDnied value) rideDenied,
    required TResult Function(DriverCancellTimeOff value) driverCancellTimeOff,
    required TResult Function(RideInitilialized value) rideInitialized,
  }) {
    return driverCancellTimeOff(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RideAccepted value)? rideAccepted,
    TResult Function(DriverArrived value)? driverArrived,
    TResult Function(RideCancelledByUser value)? rideCancelledByUser,
    TResult Function(RideCancelledByDriver value)? rideCancelledByDriver,
    TResult Function(RideStarted value)? rideStarted,
    TResult Function(UserPicked value)? userPicked,
    TResult Function(RideFinished value)? rideFinished,
    TResult Function(RideDnied value)? rideDenied,
    TResult Function(DriverCancellTimeOff value)? driverCancellTimeOff,
    TResult Function(RideInitilialized value)? rideInitialized,
  }) {
    return driverCancellTimeOff?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RideAccepted value)? rideAccepted,
    TResult Function(DriverArrived value)? driverArrived,
    TResult Function(RideCancelledByUser value)? rideCancelledByUser,
    TResult Function(RideCancelledByDriver value)? rideCancelledByDriver,
    TResult Function(RideStarted value)? rideStarted,
    TResult Function(UserPicked value)? userPicked,
    TResult Function(RideFinished value)? rideFinished,
    TResult Function(RideDnied value)? rideDenied,
    TResult Function(DriverCancellTimeOff value)? driverCancellTimeOff,
    TResult Function(RideInitilialized value)? rideInitialized,
    required TResult orElse(),
  }) {
    if (driverCancellTimeOff != null) {
      return driverCancellTimeOff(this);
    }
    return orElse();
  }
}

abstract class DriverCancellTimeOff implements RideEvent {
  const factory DriverCancellTimeOff() = _$DriverCancellTimeOff;
}

/// @nodoc
abstract class $RideInitilializedCopyWith<$Res> {
  factory $RideInitilializedCopyWith(
          RideInitilialized value, $Res Function(RideInitilialized) then) =
      _$RideInitilializedCopyWithImpl<$Res>;
  $Res call({String rideId});
}

/// @nodoc
class _$RideInitilializedCopyWithImpl<$Res>
    extends _$RideEventCopyWithImpl<$Res>
    implements $RideInitilializedCopyWith<$Res> {
  _$RideInitilializedCopyWithImpl(
      RideInitilialized _value, $Res Function(RideInitilialized) _then)
      : super(_value, (v) => _then(v as RideInitilialized));

  @override
  RideInitilialized get _value => super._value as RideInitilialized;

  @override
  $Res call({
    Object? rideId = freezed,
  }) {
    return _then(RideInitilialized(
      rideId == freezed
          ? _value.rideId
          : rideId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RideInitilialized
    with DiagnosticableTreeMixin
    implements RideInitilialized {
  const _$RideInitilialized(this.rideId);

  @override
  final String rideId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RideEvent.rideInitialized(rideId: $rideId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RideEvent.rideInitialized'))
      ..add(DiagnosticsProperty('rideId', rideId));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RideInitilialized &&
            const DeepCollectionEquality().equals(other.rideId, rideId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(rideId));

  @JsonKey(ignore: true)
  @override
  $RideInitilializedCopyWith<RideInitilialized> get copyWith =>
      _$RideInitilializedCopyWithImpl<RideInitilialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() rideAccepted,
    required TResult Function(Ride ride, Duration driverArrivalDuration)
        driverArrived,
    required TResult Function() rideCancelledByUser,
    required TResult Function() rideCancelledByDriver,
    required TResult Function() rideStarted,
    required TResult Function() userPicked,
    required TResult Function() rideFinished,
    required TResult Function() rideDenied,
    required TResult Function() driverCancellTimeOff,
    required TResult Function(String rideId) rideInitialized,
  }) {
    return rideInitialized(rideId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? rideAccepted,
    TResult Function(Ride ride, Duration driverArrivalDuration)? driverArrived,
    TResult Function()? rideCancelledByUser,
    TResult Function()? rideCancelledByDriver,
    TResult Function()? rideStarted,
    TResult Function()? userPicked,
    TResult Function()? rideFinished,
    TResult Function()? rideDenied,
    TResult Function()? driverCancellTimeOff,
    TResult Function(String rideId)? rideInitialized,
  }) {
    return rideInitialized?.call(rideId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? rideAccepted,
    TResult Function(Ride ride, Duration driverArrivalDuration)? driverArrived,
    TResult Function()? rideCancelledByUser,
    TResult Function()? rideCancelledByDriver,
    TResult Function()? rideStarted,
    TResult Function()? userPicked,
    TResult Function()? rideFinished,
    TResult Function()? rideDenied,
    TResult Function()? driverCancellTimeOff,
    TResult Function(String rideId)? rideInitialized,
    required TResult orElse(),
  }) {
    if (rideInitialized != null) {
      return rideInitialized(rideId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RideAccepted value) rideAccepted,
    required TResult Function(DriverArrived value) driverArrived,
    required TResult Function(RideCancelledByUser value) rideCancelledByUser,
    required TResult Function(RideCancelledByDriver value)
        rideCancelledByDriver,
    required TResult Function(RideStarted value) rideStarted,
    required TResult Function(UserPicked value) userPicked,
    required TResult Function(RideFinished value) rideFinished,
    required TResult Function(RideDnied value) rideDenied,
    required TResult Function(DriverCancellTimeOff value) driverCancellTimeOff,
    required TResult Function(RideInitilialized value) rideInitialized,
  }) {
    return rideInitialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RideAccepted value)? rideAccepted,
    TResult Function(DriverArrived value)? driverArrived,
    TResult Function(RideCancelledByUser value)? rideCancelledByUser,
    TResult Function(RideCancelledByDriver value)? rideCancelledByDriver,
    TResult Function(RideStarted value)? rideStarted,
    TResult Function(UserPicked value)? userPicked,
    TResult Function(RideFinished value)? rideFinished,
    TResult Function(RideDnied value)? rideDenied,
    TResult Function(DriverCancellTimeOff value)? driverCancellTimeOff,
    TResult Function(RideInitilialized value)? rideInitialized,
  }) {
    return rideInitialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RideAccepted value)? rideAccepted,
    TResult Function(DriverArrived value)? driverArrived,
    TResult Function(RideCancelledByUser value)? rideCancelledByUser,
    TResult Function(RideCancelledByDriver value)? rideCancelledByDriver,
    TResult Function(RideStarted value)? rideStarted,
    TResult Function(UserPicked value)? userPicked,
    TResult Function(RideFinished value)? rideFinished,
    TResult Function(RideDnied value)? rideDenied,
    TResult Function(DriverCancellTimeOff value)? driverCancellTimeOff,
    TResult Function(RideInitilialized value)? rideInitialized,
    required TResult orElse(),
  }) {
    if (rideInitialized != null) {
      return rideInitialized(this);
    }
    return orElse();
  }
}

abstract class RideInitilialized implements RideEvent {
  const factory RideInitilialized(String rideId) = _$RideInitilialized;

  String get rideId;
  @JsonKey(ignore: true)
  $RideInitilializedCopyWith<RideInitilialized> get copyWith =>
      throw _privateConstructorUsedError;
}

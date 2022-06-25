// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'ride_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RideStateTearOff {
  const _$RideStateTearOff();

  _RideState call(
      {Booking? currentBooking, required DriverRecord driverRecord}) {
    return _RideState(
      currentBooking: currentBooking,
      driverRecord: driverRecord,
    );
  }
}

/// @nodoc
const $RideState = _$RideStateTearOff();

/// @nodoc
mixin _$RideState {
  Booking? get currentBooking => throw _privateConstructorUsedError;
  DriverRecord get driverRecord => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RideStateCopyWith<RideState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RideStateCopyWith<$Res> {
  factory $RideStateCopyWith(RideState value, $Res Function(RideState) then) =
      _$RideStateCopyWithImpl<$Res>;
  $Res call({Booking? currentBooking, DriverRecord driverRecord});

  $BookingCopyWith<$Res>? get currentBooking;
  $DriverRecordCopyWith<$Res> get driverRecord;
}

/// @nodoc
class _$RideStateCopyWithImpl<$Res> implements $RideStateCopyWith<$Res> {
  _$RideStateCopyWithImpl(this._value, this._then);

  final RideState _value;
  // ignore: unused_field
  final $Res Function(RideState) _then;

  @override
  $Res call({
    Object? currentBooking = freezed,
    Object? driverRecord = freezed,
  }) {
    return _then(_value.copyWith(
      currentBooking: currentBooking == freezed
          ? _value.currentBooking
          : currentBooking // ignore: cast_nullable_to_non_nullable
              as Booking?,
      driverRecord: driverRecord == freezed
          ? _value.driverRecord
          : driverRecord // ignore: cast_nullable_to_non_nullable
              as DriverRecord,
    ));
  }

  @override
  $BookingCopyWith<$Res>? get currentBooking {
    if (_value.currentBooking == null) {
      return null;
    }

    return $BookingCopyWith<$Res>(_value.currentBooking!, (value) {
      return _then(_value.copyWith(currentBooking: value));
    });
  }

  @override
  $DriverRecordCopyWith<$Res> get driverRecord {
    return $DriverRecordCopyWith<$Res>(_value.driverRecord, (value) {
      return _then(_value.copyWith(driverRecord: value));
    });
  }
}

/// @nodoc
abstract class _$RideStateCopyWith<$Res> implements $RideStateCopyWith<$Res> {
  factory _$RideStateCopyWith(
          _RideState value, $Res Function(_RideState) then) =
      __$RideStateCopyWithImpl<$Res>;
  @override
  $Res call({Booking? currentBooking, DriverRecord driverRecord});

  @override
  $BookingCopyWith<$Res>? get currentBooking;
  @override
  $DriverRecordCopyWith<$Res> get driverRecord;
}

/// @nodoc
class __$RideStateCopyWithImpl<$Res> extends _$RideStateCopyWithImpl<$Res>
    implements _$RideStateCopyWith<$Res> {
  __$RideStateCopyWithImpl(_RideState _value, $Res Function(_RideState) _then)
      : super(_value, (v) => _then(v as _RideState));

  @override
  _RideState get _value => super._value as _RideState;

  @override
  $Res call({
    Object? currentBooking = freezed,
    Object? driverRecord = freezed,
  }) {
    return _then(_RideState(
      currentBooking: currentBooking == freezed
          ? _value.currentBooking
          : currentBooking // ignore: cast_nullable_to_non_nullable
              as Booking?,
      driverRecord: driverRecord == freezed
          ? _value.driverRecord
          : driverRecord // ignore: cast_nullable_to_non_nullable
              as DriverRecord,
    ));
  }
}

/// @nodoc

class _$_RideState implements _RideState {
  const _$_RideState({this.currentBooking, required this.driverRecord});

  @override
  final Booking? currentBooking;
  @override
  final DriverRecord driverRecord;

  @override
  String toString() {
    return 'RideState(currentBooking: $currentBooking, driverRecord: $driverRecord)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RideState &&
            const DeepCollectionEquality()
                .equals(other.currentBooking, currentBooking) &&
            const DeepCollectionEquality()
                .equals(other.driverRecord, driverRecord));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(currentBooking),
      const DeepCollectionEquality().hash(driverRecord));

  @JsonKey(ignore: true)
  @override
  _$RideStateCopyWith<_RideState> get copyWith =>
      __$RideStateCopyWithImpl<_RideState>(this, _$identity);
}

abstract class _RideState implements RideState {
  const factory _RideState(
      {Booking? currentBooking,
      required DriverRecord driverRecord}) = _$_RideState;

  @override
  Booking? get currentBooking;
  @override
  DriverRecord get driverRecord;
  @override
  @JsonKey(ignore: true)
  _$RideStateCopyWith<_RideState> get copyWith =>
      throw _privateConstructorUsedError;
}

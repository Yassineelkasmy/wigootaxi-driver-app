// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'driver_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DriverStateTearOff {
  const _$DriverStateTearOff();

  _DriverState call(
      {required bool isOnline,
      required bool isRiding,
      required bool isFree,
      String? booking_call,
      String? currentRide,
      DriverRecord? driverRecord,
      UserRecord? userRecord}) {
    return _DriverState(
      isOnline: isOnline,
      isRiding: isRiding,
      isFree: isFree,
      booking_call: booking_call,
      currentRide: currentRide,
      driverRecord: driverRecord,
      userRecord: userRecord,
    );
  }
}

/// @nodoc
const $DriverState = _$DriverStateTearOff();

/// @nodoc
mixin _$DriverState {
  bool get isOnline => throw _privateConstructorUsedError;
  bool get isRiding => throw _privateConstructorUsedError;
  bool get isFree => throw _privateConstructorUsedError;
  String? get booking_call => throw _privateConstructorUsedError;
  String? get currentRide => throw _privateConstructorUsedError;
  DriverRecord? get driverRecord => throw _privateConstructorUsedError;
  UserRecord? get userRecord => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DriverStateCopyWith<DriverState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DriverStateCopyWith<$Res> {
  factory $DriverStateCopyWith(
          DriverState value, $Res Function(DriverState) then) =
      _$DriverStateCopyWithImpl<$Res>;
  $Res call(
      {bool isOnline,
      bool isRiding,
      bool isFree,
      String? booking_call,
      String? currentRide,
      DriverRecord? driverRecord,
      UserRecord? userRecord});

  $DriverRecordCopyWith<$Res>? get driverRecord;
  $UserRecordCopyWith<$Res>? get userRecord;
}

/// @nodoc
class _$DriverStateCopyWithImpl<$Res> implements $DriverStateCopyWith<$Res> {
  _$DriverStateCopyWithImpl(this._value, this._then);

  final DriverState _value;
  // ignore: unused_field
  final $Res Function(DriverState) _then;

  @override
  $Res call({
    Object? isOnline = freezed,
    Object? isRiding = freezed,
    Object? isFree = freezed,
    Object? booking_call = freezed,
    Object? currentRide = freezed,
    Object? driverRecord = freezed,
    Object? userRecord = freezed,
  }) {
    return _then(_value.copyWith(
      isOnline: isOnline == freezed
          ? _value.isOnline
          : isOnline // ignore: cast_nullable_to_non_nullable
              as bool,
      isRiding: isRiding == freezed
          ? _value.isRiding
          : isRiding // ignore: cast_nullable_to_non_nullable
              as bool,
      isFree: isFree == freezed
          ? _value.isFree
          : isFree // ignore: cast_nullable_to_non_nullable
              as bool,
      booking_call: booking_call == freezed
          ? _value.booking_call
          : booking_call // ignore: cast_nullable_to_non_nullable
              as String?,
      currentRide: currentRide == freezed
          ? _value.currentRide
          : currentRide // ignore: cast_nullable_to_non_nullable
              as String?,
      driverRecord: driverRecord == freezed
          ? _value.driverRecord
          : driverRecord // ignore: cast_nullable_to_non_nullable
              as DriverRecord?,
      userRecord: userRecord == freezed
          ? _value.userRecord
          : userRecord // ignore: cast_nullable_to_non_nullable
              as UserRecord?,
    ));
  }

  @override
  $DriverRecordCopyWith<$Res>? get driverRecord {
    if (_value.driverRecord == null) {
      return null;
    }

    return $DriverRecordCopyWith<$Res>(_value.driverRecord!, (value) {
      return _then(_value.copyWith(driverRecord: value));
    });
  }

  @override
  $UserRecordCopyWith<$Res>? get userRecord {
    if (_value.userRecord == null) {
      return null;
    }

    return $UserRecordCopyWith<$Res>(_value.userRecord!, (value) {
      return _then(_value.copyWith(userRecord: value));
    });
  }
}

/// @nodoc
abstract class _$DriverStateCopyWith<$Res>
    implements $DriverStateCopyWith<$Res> {
  factory _$DriverStateCopyWith(
          _DriverState value, $Res Function(_DriverState) then) =
      __$DriverStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isOnline,
      bool isRiding,
      bool isFree,
      String? booking_call,
      String? currentRide,
      DriverRecord? driverRecord,
      UserRecord? userRecord});

  @override
  $DriverRecordCopyWith<$Res>? get driverRecord;
  @override
  $UserRecordCopyWith<$Res>? get userRecord;
}

/// @nodoc
class __$DriverStateCopyWithImpl<$Res> extends _$DriverStateCopyWithImpl<$Res>
    implements _$DriverStateCopyWith<$Res> {
  __$DriverStateCopyWithImpl(
      _DriverState _value, $Res Function(_DriverState) _then)
      : super(_value, (v) => _then(v as _DriverState));

  @override
  _DriverState get _value => super._value as _DriverState;

  @override
  $Res call({
    Object? isOnline = freezed,
    Object? isRiding = freezed,
    Object? isFree = freezed,
    Object? booking_call = freezed,
    Object? currentRide = freezed,
    Object? driverRecord = freezed,
    Object? userRecord = freezed,
  }) {
    return _then(_DriverState(
      isOnline: isOnline == freezed
          ? _value.isOnline
          : isOnline // ignore: cast_nullable_to_non_nullable
              as bool,
      isRiding: isRiding == freezed
          ? _value.isRiding
          : isRiding // ignore: cast_nullable_to_non_nullable
              as bool,
      isFree: isFree == freezed
          ? _value.isFree
          : isFree // ignore: cast_nullable_to_non_nullable
              as bool,
      booking_call: booking_call == freezed
          ? _value.booking_call
          : booking_call // ignore: cast_nullable_to_non_nullable
              as String?,
      currentRide: currentRide == freezed
          ? _value.currentRide
          : currentRide // ignore: cast_nullable_to_non_nullable
              as String?,
      driverRecord: driverRecord == freezed
          ? _value.driverRecord
          : driverRecord // ignore: cast_nullable_to_non_nullable
              as DriverRecord?,
      userRecord: userRecord == freezed
          ? _value.userRecord
          : userRecord // ignore: cast_nullable_to_non_nullable
              as UserRecord?,
    ));
  }
}

/// @nodoc

class _$_DriverState implements _DriverState {
  const _$_DriverState(
      {required this.isOnline,
      required this.isRiding,
      required this.isFree,
      this.booking_call,
      this.currentRide,
      this.driverRecord,
      this.userRecord});

  @override
  final bool isOnline;
  @override
  final bool isRiding;
  @override
  final bool isFree;
  @override
  final String? booking_call;
  @override
  final String? currentRide;
  @override
  final DriverRecord? driverRecord;
  @override
  final UserRecord? userRecord;

  @override
  String toString() {
    return 'DriverState(isOnline: $isOnline, isRiding: $isRiding, isFree: $isFree, booking_call: $booking_call, currentRide: $currentRide, driverRecord: $driverRecord, userRecord: $userRecord)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DriverState &&
            const DeepCollectionEquality().equals(other.isOnline, isOnline) &&
            const DeepCollectionEquality().equals(other.isRiding, isRiding) &&
            const DeepCollectionEquality().equals(other.isFree, isFree) &&
            const DeepCollectionEquality()
                .equals(other.booking_call, booking_call) &&
            const DeepCollectionEquality()
                .equals(other.currentRide, currentRide) &&
            const DeepCollectionEquality()
                .equals(other.driverRecord, driverRecord) &&
            const DeepCollectionEquality()
                .equals(other.userRecord, userRecord));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isOnline),
      const DeepCollectionEquality().hash(isRiding),
      const DeepCollectionEquality().hash(isFree),
      const DeepCollectionEquality().hash(booking_call),
      const DeepCollectionEquality().hash(currentRide),
      const DeepCollectionEquality().hash(driverRecord),
      const DeepCollectionEquality().hash(userRecord));

  @JsonKey(ignore: true)
  @override
  _$DriverStateCopyWith<_DriverState> get copyWith =>
      __$DriverStateCopyWithImpl<_DriverState>(this, _$identity);
}

abstract class _DriverState implements DriverState {
  const factory _DriverState(
      {required bool isOnline,
      required bool isRiding,
      required bool isFree,
      String? booking_call,
      String? currentRide,
      DriverRecord? driverRecord,
      UserRecord? userRecord}) = _$_DriverState;

  @override
  bool get isOnline;
  @override
  bool get isRiding;
  @override
  bool get isFree;
  @override
  String? get booking_call;
  @override
  String? get currentRide;
  @override
  DriverRecord? get driverRecord;
  @override
  UserRecord? get userRecord;
  @override
  @JsonKey(ignore: true)
  _$DriverStateCopyWith<_DriverState> get copyWith =>
      throw _privateConstructorUsedError;
}

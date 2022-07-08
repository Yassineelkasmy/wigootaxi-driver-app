// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'ride.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Ride _$RideFromJson(Map<String, dynamic> json) {
  return _Ride.fromJson(json);
}

/// @nodoc
class _$RideTearOff {
  const _$RideTearOff();

  _Ride call(
      {required String driverUid,
      required String userUid,
      double? driverLat,
      double? driverLng,
      double? userLat,
      double? userLng,
      dynamic currentDriverLocation,
      dynamic currentUserLocation,
      bool? cancelledByUser,
      bool? cancelledByDriver,
      int? driverArriveDuration,
      int? driverWaitDuration,
      int? rideDuration}) {
    return _Ride(
      driverUid: driverUid,
      userUid: userUid,
      driverLat: driverLat,
      driverLng: driverLng,
      userLat: userLat,
      userLng: userLng,
      currentDriverLocation: currentDriverLocation,
      currentUserLocation: currentUserLocation,
      cancelledByUser: cancelledByUser,
      cancelledByDriver: cancelledByDriver,
      driverArriveDuration: driverArriveDuration,
      driverWaitDuration: driverWaitDuration,
      rideDuration: rideDuration,
    );
  }

  Ride fromJson(Map<String, Object?> json) {
    return Ride.fromJson(json);
  }
}

/// @nodoc
const $Ride = _$RideTearOff();

/// @nodoc
mixin _$Ride {
  String get driverUid => throw _privateConstructorUsedError;
  String get userUid => throw _privateConstructorUsedError;
  double? get driverLat => throw _privateConstructorUsedError;
  double? get driverLng => throw _privateConstructorUsedError;
  double? get userLat => throw _privateConstructorUsedError;
  double? get userLng => throw _privateConstructorUsedError;
  dynamic get currentDriverLocation => throw _privateConstructorUsedError;
  dynamic get currentUserLocation => throw _privateConstructorUsedError;
  bool? get cancelledByUser => throw _privateConstructorUsedError;
  bool? get cancelledByDriver => throw _privateConstructorUsedError;
  int? get driverArriveDuration => throw _privateConstructorUsedError;
  int? get driverWaitDuration => throw _privateConstructorUsedError;
  int? get rideDuration => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RideCopyWith<Ride> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RideCopyWith<$Res> {
  factory $RideCopyWith(Ride value, $Res Function(Ride) then) =
      _$RideCopyWithImpl<$Res>;
  $Res call(
      {String driverUid,
      String userUid,
      double? driverLat,
      double? driverLng,
      double? userLat,
      double? userLng,
      dynamic currentDriverLocation,
      dynamic currentUserLocation,
      bool? cancelledByUser,
      bool? cancelledByDriver,
      int? driverArriveDuration,
      int? driverWaitDuration,
      int? rideDuration});
}

/// @nodoc
class _$RideCopyWithImpl<$Res> implements $RideCopyWith<$Res> {
  _$RideCopyWithImpl(this._value, this._then);

  final Ride _value;
  // ignore: unused_field
  final $Res Function(Ride) _then;

  @override
  $Res call({
    Object? driverUid = freezed,
    Object? userUid = freezed,
    Object? driverLat = freezed,
    Object? driverLng = freezed,
    Object? userLat = freezed,
    Object? userLng = freezed,
    Object? currentDriverLocation = freezed,
    Object? currentUserLocation = freezed,
    Object? cancelledByUser = freezed,
    Object? cancelledByDriver = freezed,
    Object? driverArriveDuration = freezed,
    Object? driverWaitDuration = freezed,
    Object? rideDuration = freezed,
  }) {
    return _then(_value.copyWith(
      driverUid: driverUid == freezed
          ? _value.driverUid
          : driverUid // ignore: cast_nullable_to_non_nullable
              as String,
      userUid: userUid == freezed
          ? _value.userUid
          : userUid // ignore: cast_nullable_to_non_nullable
              as String,
      driverLat: driverLat == freezed
          ? _value.driverLat
          : driverLat // ignore: cast_nullable_to_non_nullable
              as double?,
      driverLng: driverLng == freezed
          ? _value.driverLng
          : driverLng // ignore: cast_nullable_to_non_nullable
              as double?,
      userLat: userLat == freezed
          ? _value.userLat
          : userLat // ignore: cast_nullable_to_non_nullable
              as double?,
      userLng: userLng == freezed
          ? _value.userLng
          : userLng // ignore: cast_nullable_to_non_nullable
              as double?,
      currentDriverLocation: currentDriverLocation == freezed
          ? _value.currentDriverLocation
          : currentDriverLocation // ignore: cast_nullable_to_non_nullable
              as dynamic,
      currentUserLocation: currentUserLocation == freezed
          ? _value.currentUserLocation
          : currentUserLocation // ignore: cast_nullable_to_non_nullable
              as dynamic,
      cancelledByUser: cancelledByUser == freezed
          ? _value.cancelledByUser
          : cancelledByUser // ignore: cast_nullable_to_non_nullable
              as bool?,
      cancelledByDriver: cancelledByDriver == freezed
          ? _value.cancelledByDriver
          : cancelledByDriver // ignore: cast_nullable_to_non_nullable
              as bool?,
      driverArriveDuration: driverArriveDuration == freezed
          ? _value.driverArriveDuration
          : driverArriveDuration // ignore: cast_nullable_to_non_nullable
              as int?,
      driverWaitDuration: driverWaitDuration == freezed
          ? _value.driverWaitDuration
          : driverWaitDuration // ignore: cast_nullable_to_non_nullable
              as int?,
      rideDuration: rideDuration == freezed
          ? _value.rideDuration
          : rideDuration // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$RideCopyWith<$Res> implements $RideCopyWith<$Res> {
  factory _$RideCopyWith(_Ride value, $Res Function(_Ride) then) =
      __$RideCopyWithImpl<$Res>;
  @override
  $Res call(
      {String driverUid,
      String userUid,
      double? driverLat,
      double? driverLng,
      double? userLat,
      double? userLng,
      dynamic currentDriverLocation,
      dynamic currentUserLocation,
      bool? cancelledByUser,
      bool? cancelledByDriver,
      int? driverArriveDuration,
      int? driverWaitDuration,
      int? rideDuration});
}

/// @nodoc
class __$RideCopyWithImpl<$Res> extends _$RideCopyWithImpl<$Res>
    implements _$RideCopyWith<$Res> {
  __$RideCopyWithImpl(_Ride _value, $Res Function(_Ride) _then)
      : super(_value, (v) => _then(v as _Ride));

  @override
  _Ride get _value => super._value as _Ride;

  @override
  $Res call({
    Object? driverUid = freezed,
    Object? userUid = freezed,
    Object? driverLat = freezed,
    Object? driverLng = freezed,
    Object? userLat = freezed,
    Object? userLng = freezed,
    Object? currentDriverLocation = freezed,
    Object? currentUserLocation = freezed,
    Object? cancelledByUser = freezed,
    Object? cancelledByDriver = freezed,
    Object? driverArriveDuration = freezed,
    Object? driverWaitDuration = freezed,
    Object? rideDuration = freezed,
  }) {
    return _then(_Ride(
      driverUid: driverUid == freezed
          ? _value.driverUid
          : driverUid // ignore: cast_nullable_to_non_nullable
              as String,
      userUid: userUid == freezed
          ? _value.userUid
          : userUid // ignore: cast_nullable_to_non_nullable
              as String,
      driverLat: driverLat == freezed
          ? _value.driverLat
          : driverLat // ignore: cast_nullable_to_non_nullable
              as double?,
      driverLng: driverLng == freezed
          ? _value.driverLng
          : driverLng // ignore: cast_nullable_to_non_nullable
              as double?,
      userLat: userLat == freezed
          ? _value.userLat
          : userLat // ignore: cast_nullable_to_non_nullable
              as double?,
      userLng: userLng == freezed
          ? _value.userLng
          : userLng // ignore: cast_nullable_to_non_nullable
              as double?,
      currentDriverLocation: currentDriverLocation == freezed
          ? _value.currentDriverLocation
          : currentDriverLocation // ignore: cast_nullable_to_non_nullable
              as dynamic,
      currentUserLocation: currentUserLocation == freezed
          ? _value.currentUserLocation
          : currentUserLocation // ignore: cast_nullable_to_non_nullable
              as dynamic,
      cancelledByUser: cancelledByUser == freezed
          ? _value.cancelledByUser
          : cancelledByUser // ignore: cast_nullable_to_non_nullable
              as bool?,
      cancelledByDriver: cancelledByDriver == freezed
          ? _value.cancelledByDriver
          : cancelledByDriver // ignore: cast_nullable_to_non_nullable
              as bool?,
      driverArriveDuration: driverArriveDuration == freezed
          ? _value.driverArriveDuration
          : driverArriveDuration // ignore: cast_nullable_to_non_nullable
              as int?,
      driverWaitDuration: driverWaitDuration == freezed
          ? _value.driverWaitDuration
          : driverWaitDuration // ignore: cast_nullable_to_non_nullable
              as int?,
      rideDuration: rideDuration == freezed
          ? _value.rideDuration
          : rideDuration // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Ride implements _Ride {
  const _$_Ride(
      {required this.driverUid,
      required this.userUid,
      this.driverLat,
      this.driverLng,
      this.userLat,
      this.userLng,
      this.currentDriverLocation,
      this.currentUserLocation,
      this.cancelledByUser,
      this.cancelledByDriver,
      this.driverArriveDuration,
      this.driverWaitDuration,
      this.rideDuration});

  factory _$_Ride.fromJson(Map<String, dynamic> json) => _$$_RideFromJson(json);

  @override
  final String driverUid;
  @override
  final String userUid;
  @override
  final double? driverLat;
  @override
  final double? driverLng;
  @override
  final double? userLat;
  @override
  final double? userLng;
  @override
  final dynamic currentDriverLocation;
  @override
  final dynamic currentUserLocation;
  @override
  final bool? cancelledByUser;
  @override
  final bool? cancelledByDriver;
  @override
  final int? driverArriveDuration;
  @override
  final int? driverWaitDuration;
  @override
  final int? rideDuration;

  @override
  String toString() {
    return 'Ride(driverUid: $driverUid, userUid: $userUid, driverLat: $driverLat, driverLng: $driverLng, userLat: $userLat, userLng: $userLng, currentDriverLocation: $currentDriverLocation, currentUserLocation: $currentUserLocation, cancelledByUser: $cancelledByUser, cancelledByDriver: $cancelledByDriver, driverArriveDuration: $driverArriveDuration, driverWaitDuration: $driverWaitDuration, rideDuration: $rideDuration)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Ride &&
            const DeepCollectionEquality().equals(other.driverUid, driverUid) &&
            const DeepCollectionEquality().equals(other.userUid, userUid) &&
            const DeepCollectionEquality().equals(other.driverLat, driverLat) &&
            const DeepCollectionEquality().equals(other.driverLng, driverLng) &&
            const DeepCollectionEquality().equals(other.userLat, userLat) &&
            const DeepCollectionEquality().equals(other.userLng, userLng) &&
            const DeepCollectionEquality()
                .equals(other.currentDriverLocation, currentDriverLocation) &&
            const DeepCollectionEquality()
                .equals(other.currentUserLocation, currentUserLocation) &&
            const DeepCollectionEquality()
                .equals(other.cancelledByUser, cancelledByUser) &&
            const DeepCollectionEquality()
                .equals(other.cancelledByDriver, cancelledByDriver) &&
            const DeepCollectionEquality()
                .equals(other.driverArriveDuration, driverArriveDuration) &&
            const DeepCollectionEquality()
                .equals(other.driverWaitDuration, driverWaitDuration) &&
            const DeepCollectionEquality()
                .equals(other.rideDuration, rideDuration));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(driverUid),
      const DeepCollectionEquality().hash(userUid),
      const DeepCollectionEquality().hash(driverLat),
      const DeepCollectionEquality().hash(driverLng),
      const DeepCollectionEquality().hash(userLat),
      const DeepCollectionEquality().hash(userLng),
      const DeepCollectionEquality().hash(currentDriverLocation),
      const DeepCollectionEquality().hash(currentUserLocation),
      const DeepCollectionEquality().hash(cancelledByUser),
      const DeepCollectionEquality().hash(cancelledByDriver),
      const DeepCollectionEquality().hash(driverArriveDuration),
      const DeepCollectionEquality().hash(driverWaitDuration),
      const DeepCollectionEquality().hash(rideDuration));

  @JsonKey(ignore: true)
  @override
  _$RideCopyWith<_Ride> get copyWith =>
      __$RideCopyWithImpl<_Ride>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RideToJson(this);
  }
}

abstract class _Ride implements Ride {
  const factory _Ride(
      {required String driverUid,
      required String userUid,
      double? driverLat,
      double? driverLng,
      double? userLat,
      double? userLng,
      dynamic currentDriverLocation,
      dynamic currentUserLocation,
      bool? cancelledByUser,
      bool? cancelledByDriver,
      int? driverArriveDuration,
      int? driverWaitDuration,
      int? rideDuration}) = _$_Ride;

  factory _Ride.fromJson(Map<String, dynamic> json) = _$_Ride.fromJson;

  @override
  String get driverUid;
  @override
  String get userUid;
  @override
  double? get driverLat;
  @override
  double? get driverLng;
  @override
  double? get userLat;
  @override
  double? get userLng;
  @override
  dynamic get currentDriverLocation;
  @override
  dynamic get currentUserLocation;
  @override
  bool? get cancelledByUser;
  @override
  bool? get cancelledByDriver;
  @override
  int? get driverArriveDuration;
  @override
  int? get driverWaitDuration;
  @override
  int? get rideDuration;
  @override
  @JsonKey(ignore: true)
  _$RideCopyWith<_Ride> get copyWith => throw _privateConstructorUsedError;
}

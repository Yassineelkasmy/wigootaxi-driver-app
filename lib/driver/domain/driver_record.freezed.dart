// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'driver_record.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DriverRecord _$DriverRecordFromJson(Map<String, dynamic> json) {
  return _DriverRecord.fromJson(json);
}

/// @nodoc
class _$DriverRecordTearOff {
  const _$DriverRecordTearOff();

  _DriverRecord call(
      {required double lng,
      required double lat,
      required String id,
      required int lastSeconds,
      required String username,
      required String phone,
      String? booking_call}) {
    return _DriverRecord(
      lng: lng,
      lat: lat,
      id: id,
      lastSeconds: lastSeconds,
      username: username,
      phone: phone,
      booking_call: booking_call,
    );
  }

  DriverRecord fromJson(Map<String, Object?> json) {
    return DriverRecord.fromJson(json);
  }
}

/// @nodoc
const $DriverRecord = _$DriverRecordTearOff();

/// @nodoc
mixin _$DriverRecord {
  double get lng => throw _privateConstructorUsedError;
  double get lat => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  int get lastSeconds => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  String? get booking_call => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DriverRecordCopyWith<DriverRecord> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DriverRecordCopyWith<$Res> {
  factory $DriverRecordCopyWith(
          DriverRecord value, $Res Function(DriverRecord) then) =
      _$DriverRecordCopyWithImpl<$Res>;
  $Res call(
      {double lng,
      double lat,
      String id,
      int lastSeconds,
      String username,
      String phone,
      String? booking_call});
}

/// @nodoc
class _$DriverRecordCopyWithImpl<$Res> implements $DriverRecordCopyWith<$Res> {
  _$DriverRecordCopyWithImpl(this._value, this._then);

  final DriverRecord _value;
  // ignore: unused_field
  final $Res Function(DriverRecord) _then;

  @override
  $Res call({
    Object? lng = freezed,
    Object? lat = freezed,
    Object? id = freezed,
    Object? lastSeconds = freezed,
    Object? username = freezed,
    Object? phone = freezed,
    Object? booking_call = freezed,
  }) {
    return _then(_value.copyWith(
      lng: lng == freezed
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double,
      lat: lat == freezed
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      lastSeconds: lastSeconds == freezed
          ? _value.lastSeconds
          : lastSeconds // ignore: cast_nullable_to_non_nullable
              as int,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      booking_call: booking_call == freezed
          ? _value.booking_call
          : booking_call // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$DriverRecordCopyWith<$Res>
    implements $DriverRecordCopyWith<$Res> {
  factory _$DriverRecordCopyWith(
          _DriverRecord value, $Res Function(_DriverRecord) then) =
      __$DriverRecordCopyWithImpl<$Res>;
  @override
  $Res call(
      {double lng,
      double lat,
      String id,
      int lastSeconds,
      String username,
      String phone,
      String? booking_call});
}

/// @nodoc
class __$DriverRecordCopyWithImpl<$Res> extends _$DriverRecordCopyWithImpl<$Res>
    implements _$DriverRecordCopyWith<$Res> {
  __$DriverRecordCopyWithImpl(
      _DriverRecord _value, $Res Function(_DriverRecord) _then)
      : super(_value, (v) => _then(v as _DriverRecord));

  @override
  _DriverRecord get _value => super._value as _DriverRecord;

  @override
  $Res call({
    Object? lng = freezed,
    Object? lat = freezed,
    Object? id = freezed,
    Object? lastSeconds = freezed,
    Object? username = freezed,
    Object? phone = freezed,
    Object? booking_call = freezed,
  }) {
    return _then(_DriverRecord(
      lng: lng == freezed
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double,
      lat: lat == freezed
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      lastSeconds: lastSeconds == freezed
          ? _value.lastSeconds
          : lastSeconds // ignore: cast_nullable_to_non_nullable
              as int,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      booking_call: booking_call == freezed
          ? _value.booking_call
          : booking_call // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DriverRecord implements _DriverRecord {
  const _$_DriverRecord(
      {required this.lng,
      required this.lat,
      required this.id,
      required this.lastSeconds,
      required this.username,
      required this.phone,
      this.booking_call});

  factory _$_DriverRecord.fromJson(Map<String, dynamic> json) =>
      _$$_DriverRecordFromJson(json);

  @override
  final double lng;
  @override
  final double lat;
  @override
  final String id;
  @override
  final int lastSeconds;
  @override
  final String username;
  @override
  final String phone;
  @override
  final String? booking_call;

  @override
  String toString() {
    return 'DriverRecord(lng: $lng, lat: $lat, id: $id, lastSeconds: $lastSeconds, username: $username, phone: $phone, booking_call: $booking_call)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DriverRecord &&
            const DeepCollectionEquality().equals(other.lng, lng) &&
            const DeepCollectionEquality().equals(other.lat, lat) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.lastSeconds, lastSeconds) &&
            const DeepCollectionEquality().equals(other.username, username) &&
            const DeepCollectionEquality().equals(other.phone, phone) &&
            const DeepCollectionEquality()
                .equals(other.booking_call, booking_call));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(lng),
      const DeepCollectionEquality().hash(lat),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(lastSeconds),
      const DeepCollectionEquality().hash(username),
      const DeepCollectionEquality().hash(phone),
      const DeepCollectionEquality().hash(booking_call));

  @JsonKey(ignore: true)
  @override
  _$DriverRecordCopyWith<_DriverRecord> get copyWith =>
      __$DriverRecordCopyWithImpl<_DriverRecord>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DriverRecordToJson(this);
  }
}

abstract class _DriverRecord implements DriverRecord {
  const factory _DriverRecord(
      {required double lng,
      required double lat,
      required String id,
      required int lastSeconds,
      required String username,
      required String phone,
      String? booking_call}) = _$_DriverRecord;

  factory _DriverRecord.fromJson(Map<String, dynamic> json) =
      _$_DriverRecord.fromJson;

  @override
  double get lng;
  @override
  double get lat;
  @override
  String get id;
  @override
  int get lastSeconds;
  @override
  String get username;
  @override
  String get phone;
  @override
  String? get booking_call;
  @override
  @JsonKey(ignore: true)
  _$DriverRecordCopyWith<_DriverRecord> get copyWith =>
      throw _privateConstructorUsedError;
}

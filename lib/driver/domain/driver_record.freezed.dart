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
      String? booking_call,
      String? bookingUserUid,
      BookingRecord? booking}) {
    return _DriverRecord(
      lng: lng,
      lat: lat,
      id: id,
      lastSeconds: lastSeconds,
      username: username,
      phone: phone,
      booking_call: booking_call,
      bookingUserUid: bookingUserUid,
      booking: booking,
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
  String? get bookingUserUid => throw _privateConstructorUsedError;
  BookingRecord? get booking => throw _privateConstructorUsedError;

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
      String? booking_call,
      String? bookingUserUid,
      BookingRecord? booking});

  $BookingRecordCopyWith<$Res>? get booking;
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
    Object? bookingUserUid = freezed,
    Object? booking = freezed,
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
      bookingUserUid: bookingUserUid == freezed
          ? _value.bookingUserUid
          : bookingUserUid // ignore: cast_nullable_to_non_nullable
              as String?,
      booking: booking == freezed
          ? _value.booking
          : booking // ignore: cast_nullable_to_non_nullable
              as BookingRecord?,
    ));
  }

  @override
  $BookingRecordCopyWith<$Res>? get booking {
    if (_value.booking == null) {
      return null;
    }

    return $BookingRecordCopyWith<$Res>(_value.booking!, (value) {
      return _then(_value.copyWith(booking: value));
    });
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
      String? booking_call,
      String? bookingUserUid,
      BookingRecord? booking});

  @override
  $BookingRecordCopyWith<$Res>? get booking;
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
    Object? bookingUserUid = freezed,
    Object? booking = freezed,
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
      bookingUserUid: bookingUserUid == freezed
          ? _value.bookingUserUid
          : bookingUserUid // ignore: cast_nullable_to_non_nullable
              as String?,
      booking: booking == freezed
          ? _value.booking
          : booking // ignore: cast_nullable_to_non_nullable
              as BookingRecord?,
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
      this.booking_call,
      this.bookingUserUid,
      this.booking});

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
  final String? bookingUserUid;
  @override
  final BookingRecord? booking;

  @override
  String toString() {
    return 'DriverRecord(lng: $lng, lat: $lat, id: $id, lastSeconds: $lastSeconds, username: $username, phone: $phone, booking_call: $booking_call, bookingUserUid: $bookingUserUid, booking: $booking)';
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
                .equals(other.booking_call, booking_call) &&
            const DeepCollectionEquality()
                .equals(other.bookingUserUid, bookingUserUid) &&
            const DeepCollectionEquality().equals(other.booking, booking));
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
      const DeepCollectionEquality().hash(booking_call),
      const DeepCollectionEquality().hash(bookingUserUid),
      const DeepCollectionEquality().hash(booking));

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
      String? booking_call,
      String? bookingUserUid,
      BookingRecord? booking}) = _$_DriverRecord;

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
  String? get bookingUserUid;
  @override
  BookingRecord? get booking;
  @override
  @JsonKey(ignore: true)
  _$DriverRecordCopyWith<_DriverRecord> get copyWith =>
      throw _privateConstructorUsedError;
}

UserRecord _$UserRecordFromJson(Map<String, dynamic> json) {
  return _UserRecord.fromJson(json);
}

/// @nodoc
class _$UserRecordTearOff {
  const _$UserRecordTearOff();

  _UserRecord call(
      {required String id, required String username, required String phone}) {
    return _UserRecord(
      id: id,
      username: username,
      phone: phone,
    );
  }

  UserRecord fromJson(Map<String, Object?> json) {
    return UserRecord.fromJson(json);
  }
}

/// @nodoc
const $UserRecord = _$UserRecordTearOff();

/// @nodoc
mixin _$UserRecord {
  String get id => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserRecordCopyWith<UserRecord> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserRecordCopyWith<$Res> {
  factory $UserRecordCopyWith(
          UserRecord value, $Res Function(UserRecord) then) =
      _$UserRecordCopyWithImpl<$Res>;
  $Res call({String id, String username, String phone});
}

/// @nodoc
class _$UserRecordCopyWithImpl<$Res> implements $UserRecordCopyWith<$Res> {
  _$UserRecordCopyWithImpl(this._value, this._then);

  final UserRecord _value;
  // ignore: unused_field
  final $Res Function(UserRecord) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? username = freezed,
    Object? phone = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$UserRecordCopyWith<$Res> implements $UserRecordCopyWith<$Res> {
  factory _$UserRecordCopyWith(
          _UserRecord value, $Res Function(_UserRecord) then) =
      __$UserRecordCopyWithImpl<$Res>;
  @override
  $Res call({String id, String username, String phone});
}

/// @nodoc
class __$UserRecordCopyWithImpl<$Res> extends _$UserRecordCopyWithImpl<$Res>
    implements _$UserRecordCopyWith<$Res> {
  __$UserRecordCopyWithImpl(
      _UserRecord _value, $Res Function(_UserRecord) _then)
      : super(_value, (v) => _then(v as _UserRecord));

  @override
  _UserRecord get _value => super._value as _UserRecord;

  @override
  $Res call({
    Object? id = freezed,
    Object? username = freezed,
    Object? phone = freezed,
  }) {
    return _then(_UserRecord(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserRecord implements _UserRecord {
  const _$_UserRecord(
      {required this.id, required this.username, required this.phone});

  factory _$_UserRecord.fromJson(Map<String, dynamic> json) =>
      _$$_UserRecordFromJson(json);

  @override
  final String id;
  @override
  final String username;
  @override
  final String phone;

  @override
  String toString() {
    return 'UserRecord(id: $id, username: $username, phone: $phone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserRecord &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.username, username) &&
            const DeepCollectionEquality().equals(other.phone, phone));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(username),
      const DeepCollectionEquality().hash(phone));

  @JsonKey(ignore: true)
  @override
  _$UserRecordCopyWith<_UserRecord> get copyWith =>
      __$UserRecordCopyWithImpl<_UserRecord>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserRecordToJson(this);
  }
}

abstract class _UserRecord implements UserRecord {
  const factory _UserRecord(
      {required String id,
      required String username,
      required String phone}) = _$_UserRecord;

  factory _UserRecord.fromJson(Map<String, dynamic> json) =
      _$_UserRecord.fromJson;

  @override
  String get id;
  @override
  String get username;
  @override
  String get phone;
  @override
  @JsonKey(ignore: true)
  _$UserRecordCopyWith<_UserRecord> get copyWith =>
      throw _privateConstructorUsedError;
}

BookingRecord _$BookingRecordFromJson(Map<String, dynamic> json) {
  return _BookingRecord.fromJson(json);
}

/// @nodoc
class _$BookingRecordTearOff {
  const _$BookingRecordTearOff();

  _BookingRecord call(
      {required String id,
      required UserRecord user,
      required String start_name,
      required String dest_name,
      required String disttext,
      required String durtext}) {
    return _BookingRecord(
      id: id,
      user: user,
      start_name: start_name,
      dest_name: dest_name,
      disttext: disttext,
      durtext: durtext,
    );
  }

  BookingRecord fromJson(Map<String, Object?> json) {
    return BookingRecord.fromJson(json);
  }
}

/// @nodoc
const $BookingRecord = _$BookingRecordTearOff();

/// @nodoc
mixin _$BookingRecord {
  String get id => throw _privateConstructorUsedError;
  UserRecord get user => throw _privateConstructorUsedError;
  String get start_name => throw _privateConstructorUsedError;
  String get dest_name => throw _privateConstructorUsedError;
  String get disttext => throw _privateConstructorUsedError;
  String get durtext => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookingRecordCopyWith<BookingRecord> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookingRecordCopyWith<$Res> {
  factory $BookingRecordCopyWith(
          BookingRecord value, $Res Function(BookingRecord) then) =
      _$BookingRecordCopyWithImpl<$Res>;
  $Res call(
      {String id,
      UserRecord user,
      String start_name,
      String dest_name,
      String disttext,
      String durtext});

  $UserRecordCopyWith<$Res> get user;
}

/// @nodoc
class _$BookingRecordCopyWithImpl<$Res>
    implements $BookingRecordCopyWith<$Res> {
  _$BookingRecordCopyWithImpl(this._value, this._then);

  final BookingRecord _value;
  // ignore: unused_field
  final $Res Function(BookingRecord) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? user = freezed,
    Object? start_name = freezed,
    Object? dest_name = freezed,
    Object? disttext = freezed,
    Object? durtext = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserRecord,
      start_name: start_name == freezed
          ? _value.start_name
          : start_name // ignore: cast_nullable_to_non_nullable
              as String,
      dest_name: dest_name == freezed
          ? _value.dest_name
          : dest_name // ignore: cast_nullable_to_non_nullable
              as String,
      disttext: disttext == freezed
          ? _value.disttext
          : disttext // ignore: cast_nullable_to_non_nullable
              as String,
      durtext: durtext == freezed
          ? _value.durtext
          : durtext // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $UserRecordCopyWith<$Res> get user {
    return $UserRecordCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
abstract class _$BookingRecordCopyWith<$Res>
    implements $BookingRecordCopyWith<$Res> {
  factory _$BookingRecordCopyWith(
          _BookingRecord value, $Res Function(_BookingRecord) then) =
      __$BookingRecordCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      UserRecord user,
      String start_name,
      String dest_name,
      String disttext,
      String durtext});

  @override
  $UserRecordCopyWith<$Res> get user;
}

/// @nodoc
class __$BookingRecordCopyWithImpl<$Res>
    extends _$BookingRecordCopyWithImpl<$Res>
    implements _$BookingRecordCopyWith<$Res> {
  __$BookingRecordCopyWithImpl(
      _BookingRecord _value, $Res Function(_BookingRecord) _then)
      : super(_value, (v) => _then(v as _BookingRecord));

  @override
  _BookingRecord get _value => super._value as _BookingRecord;

  @override
  $Res call({
    Object? id = freezed,
    Object? user = freezed,
    Object? start_name = freezed,
    Object? dest_name = freezed,
    Object? disttext = freezed,
    Object? durtext = freezed,
  }) {
    return _then(_BookingRecord(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserRecord,
      start_name: start_name == freezed
          ? _value.start_name
          : start_name // ignore: cast_nullable_to_non_nullable
              as String,
      dest_name: dest_name == freezed
          ? _value.dest_name
          : dest_name // ignore: cast_nullable_to_non_nullable
              as String,
      disttext: disttext == freezed
          ? _value.disttext
          : disttext // ignore: cast_nullable_to_non_nullable
              as String,
      durtext: durtext == freezed
          ? _value.durtext
          : durtext // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BookingRecord implements _BookingRecord {
  const _$_BookingRecord(
      {required this.id,
      required this.user,
      required this.start_name,
      required this.dest_name,
      required this.disttext,
      required this.durtext});

  factory _$_BookingRecord.fromJson(Map<String, dynamic> json) =>
      _$$_BookingRecordFromJson(json);

  @override
  final String id;
  @override
  final UserRecord user;
  @override
  final String start_name;
  @override
  final String dest_name;
  @override
  final String disttext;
  @override
  final String durtext;

  @override
  String toString() {
    return 'BookingRecord(id: $id, user: $user, start_name: $start_name, dest_name: $dest_name, disttext: $disttext, durtext: $durtext)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BookingRecord &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.user, user) &&
            const DeepCollectionEquality()
                .equals(other.start_name, start_name) &&
            const DeepCollectionEquality().equals(other.dest_name, dest_name) &&
            const DeepCollectionEquality().equals(other.disttext, disttext) &&
            const DeepCollectionEquality().equals(other.durtext, durtext));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(user),
      const DeepCollectionEquality().hash(start_name),
      const DeepCollectionEquality().hash(dest_name),
      const DeepCollectionEquality().hash(disttext),
      const DeepCollectionEquality().hash(durtext));

  @JsonKey(ignore: true)
  @override
  _$BookingRecordCopyWith<_BookingRecord> get copyWith =>
      __$BookingRecordCopyWithImpl<_BookingRecord>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BookingRecordToJson(this);
  }
}

abstract class _BookingRecord implements BookingRecord {
  const factory _BookingRecord(
      {required String id,
      required UserRecord user,
      required String start_name,
      required String dest_name,
      required String disttext,
      required String durtext}) = _$_BookingRecord;

  factory _BookingRecord.fromJson(Map<String, dynamic> json) =
      _$_BookingRecord.fromJson;

  @override
  String get id;
  @override
  UserRecord get user;
  @override
  String get start_name;
  @override
  String get dest_name;
  @override
  String get disttext;
  @override
  String get durtext;
  @override
  @JsonKey(ignore: true)
  _$BookingRecordCopyWith<_BookingRecord> get copyWith =>
      throw _privateConstructorUsedError;
}

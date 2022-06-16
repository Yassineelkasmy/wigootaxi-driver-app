// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'booking_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$BookingEventTearOff {
  const _$BookingEventTearOff();

  BookRideRequested bookRideRequested(
      {required Ride ride, required User user, required String driverId}) {
    return BookRideRequested(
      ride: ride,
      user: user,
      driverId: driverId,
    );
  }

  BookignsRequested bookingsRequested(String userUid) {
    return BookignsRequested(
      userUid,
    );
  }
}

/// @nodoc
const $BookingEvent = _$BookingEventTearOff();

/// @nodoc
mixin _$BookingEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Ride ride, User user, String driverId)
        bookRideRequested,
    required TResult Function(String userUid) bookingsRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Ride ride, User user, String driverId)? bookRideRequested,
    TResult Function(String userUid)? bookingsRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Ride ride, User user, String driverId)? bookRideRequested,
    TResult Function(String userUid)? bookingsRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BookRideRequested value) bookRideRequested,
    required TResult Function(BookignsRequested value) bookingsRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BookRideRequested value)? bookRideRequested,
    TResult Function(BookignsRequested value)? bookingsRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BookRideRequested value)? bookRideRequested,
    TResult Function(BookignsRequested value)? bookingsRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookingEventCopyWith<$Res> {
  factory $BookingEventCopyWith(
          BookingEvent value, $Res Function(BookingEvent) then) =
      _$BookingEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$BookingEventCopyWithImpl<$Res> implements $BookingEventCopyWith<$Res> {
  _$BookingEventCopyWithImpl(this._value, this._then);

  final BookingEvent _value;
  // ignore: unused_field
  final $Res Function(BookingEvent) _then;
}

/// @nodoc
abstract class $BookRideRequestedCopyWith<$Res> {
  factory $BookRideRequestedCopyWith(
          BookRideRequested value, $Res Function(BookRideRequested) then) =
      _$BookRideRequestedCopyWithImpl<$Res>;
  $Res call({Ride ride, User user, String driverId});

  $RideCopyWith<$Res> get ride;
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$BookRideRequestedCopyWithImpl<$Res>
    extends _$BookingEventCopyWithImpl<$Res>
    implements $BookRideRequestedCopyWith<$Res> {
  _$BookRideRequestedCopyWithImpl(
      BookRideRequested _value, $Res Function(BookRideRequested) _then)
      : super(_value, (v) => _then(v as BookRideRequested));

  @override
  BookRideRequested get _value => super._value as BookRideRequested;

  @override
  $Res call({
    Object? ride = freezed,
    Object? user = freezed,
    Object? driverId = freezed,
  }) {
    return _then(BookRideRequested(
      ride: ride == freezed
          ? _value.ride
          : ride // ignore: cast_nullable_to_non_nullable
              as Ride,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      driverId: driverId == freezed
          ? _value.driverId
          : driverId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $RideCopyWith<$Res> get ride {
    return $RideCopyWith<$Res>(_value.ride, (value) {
      return _then(_value.copyWith(ride: value));
    });
  }

  @override
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$BookRideRequested implements BookRideRequested {
  const _$BookRideRequested(
      {required this.ride, required this.user, required this.driverId});

  @override
  final Ride ride;
  @override
  final User user;
  @override
  final String driverId;

  @override
  String toString() {
    return 'BookingEvent.bookRideRequested(ride: $ride, user: $user, driverId: $driverId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BookRideRequested &&
            const DeepCollectionEquality().equals(other.ride, ride) &&
            const DeepCollectionEquality().equals(other.user, user) &&
            const DeepCollectionEquality().equals(other.driverId, driverId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(ride),
      const DeepCollectionEquality().hash(user),
      const DeepCollectionEquality().hash(driverId));

  @JsonKey(ignore: true)
  @override
  $BookRideRequestedCopyWith<BookRideRequested> get copyWith =>
      _$BookRideRequestedCopyWithImpl<BookRideRequested>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Ride ride, User user, String driverId)
        bookRideRequested,
    required TResult Function(String userUid) bookingsRequested,
  }) {
    return bookRideRequested(ride, user, driverId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Ride ride, User user, String driverId)? bookRideRequested,
    TResult Function(String userUid)? bookingsRequested,
  }) {
    return bookRideRequested?.call(ride, user, driverId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Ride ride, User user, String driverId)? bookRideRequested,
    TResult Function(String userUid)? bookingsRequested,
    required TResult orElse(),
  }) {
    if (bookRideRequested != null) {
      return bookRideRequested(ride, user, driverId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BookRideRequested value) bookRideRequested,
    required TResult Function(BookignsRequested value) bookingsRequested,
  }) {
    return bookRideRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BookRideRequested value)? bookRideRequested,
    TResult Function(BookignsRequested value)? bookingsRequested,
  }) {
    return bookRideRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BookRideRequested value)? bookRideRequested,
    TResult Function(BookignsRequested value)? bookingsRequested,
    required TResult orElse(),
  }) {
    if (bookRideRequested != null) {
      return bookRideRequested(this);
    }
    return orElse();
  }
}

abstract class BookRideRequested implements BookingEvent {
  const factory BookRideRequested(
      {required Ride ride,
      required User user,
      required String driverId}) = _$BookRideRequested;

  Ride get ride;
  User get user;
  String get driverId;
  @JsonKey(ignore: true)
  $BookRideRequestedCopyWith<BookRideRequested> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookignsRequestedCopyWith<$Res> {
  factory $BookignsRequestedCopyWith(
          BookignsRequested value, $Res Function(BookignsRequested) then) =
      _$BookignsRequestedCopyWithImpl<$Res>;
  $Res call({String userUid});
}

/// @nodoc
class _$BookignsRequestedCopyWithImpl<$Res>
    extends _$BookingEventCopyWithImpl<$Res>
    implements $BookignsRequestedCopyWith<$Res> {
  _$BookignsRequestedCopyWithImpl(
      BookignsRequested _value, $Res Function(BookignsRequested) _then)
      : super(_value, (v) => _then(v as BookignsRequested));

  @override
  BookignsRequested get _value => super._value as BookignsRequested;

  @override
  $Res call({
    Object? userUid = freezed,
  }) {
    return _then(BookignsRequested(
      userUid == freezed
          ? _value.userUid
          : userUid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$BookignsRequested implements BookignsRequested {
  const _$BookignsRequested(this.userUid);

  @override
  final String userUid;

  @override
  String toString() {
    return 'BookingEvent.bookingsRequested(userUid: $userUid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BookignsRequested &&
            const DeepCollectionEquality().equals(other.userUid, userUid));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(userUid));

  @JsonKey(ignore: true)
  @override
  $BookignsRequestedCopyWith<BookignsRequested> get copyWith =>
      _$BookignsRequestedCopyWithImpl<BookignsRequested>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Ride ride, User user, String driverId)
        bookRideRequested,
    required TResult Function(String userUid) bookingsRequested,
  }) {
    return bookingsRequested(userUid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Ride ride, User user, String driverId)? bookRideRequested,
    TResult Function(String userUid)? bookingsRequested,
  }) {
    return bookingsRequested?.call(userUid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Ride ride, User user, String driverId)? bookRideRequested,
    TResult Function(String userUid)? bookingsRequested,
    required TResult orElse(),
  }) {
    if (bookingsRequested != null) {
      return bookingsRequested(userUid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BookRideRequested value) bookRideRequested,
    required TResult Function(BookignsRequested value) bookingsRequested,
  }) {
    return bookingsRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BookRideRequested value)? bookRideRequested,
    TResult Function(BookignsRequested value)? bookingsRequested,
  }) {
    return bookingsRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BookRideRequested value)? bookRideRequested,
    TResult Function(BookignsRequested value)? bookingsRequested,
    required TResult orElse(),
  }) {
    if (bookingsRequested != null) {
      return bookingsRequested(this);
    }
    return orElse();
  }
}

abstract class BookignsRequested implements BookingEvent {
  const factory BookignsRequested(String userUid) = _$BookignsRequested;

  String get userUid;
  @JsonKey(ignore: true)
  $BookignsRequestedCopyWith<BookignsRequested> get copyWith =>
      throw _privateConstructorUsedError;
}

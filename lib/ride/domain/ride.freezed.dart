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

/// @nodoc
class _$RideTearOff {
  const _$RideTearOff();

  _Ride call(
      {required String id,
      required String driverUid,
      required String userUid,
      required List<String> path,
      required List<String> pathToStart,
      required String disttext,
      required String durtext,
      required int distance,
      required int duration,
      @TimestampConverter() required DateTime driverPickedAt,
      @TimestampConverter() required DateTime ts,
      required int price_per_km,
      @TimestampOrNullConverter() DateTime? driverArrivedAt,
      @TimestampOrNullConverter() DateTime? startedAt,
      @TimestampOrNullConverter() DateTime? finishedAt,
      String? start_name,
      String? dest_name,
      double? driverLat,
      double? driverLng,
      double? userLat,
      double? userLng,
      double? destinationLng,
      double? destinationLat,
      double? startLng,
      double? startLat,
      dynamic currentDriverLocation,
      dynamic currentUserLocation,
      dynamic start,
      dynamic destination,
      bool? cancelledByUser,
      bool? driverArrived,
      bool? started,
      bool? driving,
      bool? finished,
      bool? cancelledByDriver,
      int? driverArriveDuration,
      int? driverWaitDuration,
      int? totalDuration,
      int? totalDistance,
      double? totalPrice,
      double? tva,
      double? revenue,
      double? driverRevenue}) {
    return _Ride(
      id: id,
      driverUid: driverUid,
      userUid: userUid,
      path: path,
      pathToStart: pathToStart,
      disttext: disttext,
      durtext: durtext,
      distance: distance,
      duration: duration,
      driverPickedAt: driverPickedAt,
      ts: ts,
      price_per_km: price_per_km,
      driverArrivedAt: driverArrivedAt,
      startedAt: startedAt,
      finishedAt: finishedAt,
      start_name: start_name,
      dest_name: dest_name,
      driverLat: driverLat,
      driverLng: driverLng,
      userLat: userLat,
      userLng: userLng,
      destinationLng: destinationLng,
      destinationLat: destinationLat,
      startLng: startLng,
      startLat: startLat,
      currentDriverLocation: currentDriverLocation,
      currentUserLocation: currentUserLocation,
      start: start,
      destination: destination,
      cancelledByUser: cancelledByUser,
      driverArrived: driverArrived,
      started: started,
      driving: driving,
      finished: finished,
      cancelledByDriver: cancelledByDriver,
      driverArriveDuration: driverArriveDuration,
      driverWaitDuration: driverWaitDuration,
      totalDuration: totalDuration,
      totalDistance: totalDistance,
      totalPrice: totalPrice,
      tva: tva,
      revenue: revenue,
      driverRevenue: driverRevenue,
    );
  }
}

/// @nodoc
const $Ride = _$RideTearOff();

/// @nodoc
mixin _$Ride {
  String get id => throw _privateConstructorUsedError;
  String get driverUid => throw _privateConstructorUsedError;
  String get userUid => throw _privateConstructorUsedError;
  List<String> get path => throw _privateConstructorUsedError;
  List<String> get pathToStart => throw _privateConstructorUsedError;
  String get disttext => throw _privateConstructorUsedError;
  String get durtext => throw _privateConstructorUsedError;
  int get distance => throw _privateConstructorUsedError;
  int get duration => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime get driverPickedAt => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime get ts => throw _privateConstructorUsedError;
  int get price_per_km => throw _privateConstructorUsedError;
  @TimestampOrNullConverter()
  DateTime? get driverArrivedAt => throw _privateConstructorUsedError;
  @TimestampOrNullConverter()
  DateTime? get startedAt => throw _privateConstructorUsedError;
  @TimestampOrNullConverter()
  DateTime? get finishedAt => throw _privateConstructorUsedError;
  String? get start_name => throw _privateConstructorUsedError;
  String? get dest_name => throw _privateConstructorUsedError;
  double? get driverLat => throw _privateConstructorUsedError;
  double? get driverLng => throw _privateConstructorUsedError;
  double? get userLat => throw _privateConstructorUsedError;
  double? get userLng => throw _privateConstructorUsedError;
  double? get destinationLng => throw _privateConstructorUsedError;
  double? get destinationLat => throw _privateConstructorUsedError;
  double? get startLng => throw _privateConstructorUsedError;
  double? get startLat => throw _privateConstructorUsedError;
  dynamic get currentDriverLocation => throw _privateConstructorUsedError;
  dynamic get currentUserLocation => throw _privateConstructorUsedError;
  dynamic get start => throw _privateConstructorUsedError;
  dynamic get destination => throw _privateConstructorUsedError;
  bool? get cancelledByUser => throw _privateConstructorUsedError;
  bool? get driverArrived => throw _privateConstructorUsedError;
  bool? get started => throw _privateConstructorUsedError;
  bool? get driving => throw _privateConstructorUsedError;
  bool? get finished => throw _privateConstructorUsedError;
  bool? get cancelledByDriver => throw _privateConstructorUsedError;
  int? get driverArriveDuration => throw _privateConstructorUsedError;
  int? get driverWaitDuration => throw _privateConstructorUsedError;
  int? get totalDuration => throw _privateConstructorUsedError;
  int? get totalDistance => throw _privateConstructorUsedError;
  double? get totalPrice => throw _privateConstructorUsedError;
  double? get tva => throw _privateConstructorUsedError;
  double? get revenue => throw _privateConstructorUsedError;
  double? get driverRevenue => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RideCopyWith<Ride> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RideCopyWith<$Res> {
  factory $RideCopyWith(Ride value, $Res Function(Ride) then) =
      _$RideCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String driverUid,
      String userUid,
      List<String> path,
      List<String> pathToStart,
      String disttext,
      String durtext,
      int distance,
      int duration,
      @TimestampConverter() DateTime driverPickedAt,
      @TimestampConverter() DateTime ts,
      int price_per_km,
      @TimestampOrNullConverter() DateTime? driverArrivedAt,
      @TimestampOrNullConverter() DateTime? startedAt,
      @TimestampOrNullConverter() DateTime? finishedAt,
      String? start_name,
      String? dest_name,
      double? driverLat,
      double? driverLng,
      double? userLat,
      double? userLng,
      double? destinationLng,
      double? destinationLat,
      double? startLng,
      double? startLat,
      dynamic currentDriverLocation,
      dynamic currentUserLocation,
      dynamic start,
      dynamic destination,
      bool? cancelledByUser,
      bool? driverArrived,
      bool? started,
      bool? driving,
      bool? finished,
      bool? cancelledByDriver,
      int? driverArriveDuration,
      int? driverWaitDuration,
      int? totalDuration,
      int? totalDistance,
      double? totalPrice,
      double? tva,
      double? revenue,
      double? driverRevenue});
}

/// @nodoc
class _$RideCopyWithImpl<$Res> implements $RideCopyWith<$Res> {
  _$RideCopyWithImpl(this._value, this._then);

  final Ride _value;
  // ignore: unused_field
  final $Res Function(Ride) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? driverUid = freezed,
    Object? userUid = freezed,
    Object? path = freezed,
    Object? pathToStart = freezed,
    Object? disttext = freezed,
    Object? durtext = freezed,
    Object? distance = freezed,
    Object? duration = freezed,
    Object? driverPickedAt = freezed,
    Object? ts = freezed,
    Object? price_per_km = freezed,
    Object? driverArrivedAt = freezed,
    Object? startedAt = freezed,
    Object? finishedAt = freezed,
    Object? start_name = freezed,
    Object? dest_name = freezed,
    Object? driverLat = freezed,
    Object? driverLng = freezed,
    Object? userLat = freezed,
    Object? userLng = freezed,
    Object? destinationLng = freezed,
    Object? destinationLat = freezed,
    Object? startLng = freezed,
    Object? startLat = freezed,
    Object? currentDriverLocation = freezed,
    Object? currentUserLocation = freezed,
    Object? start = freezed,
    Object? destination = freezed,
    Object? cancelledByUser = freezed,
    Object? driverArrived = freezed,
    Object? started = freezed,
    Object? driving = freezed,
    Object? finished = freezed,
    Object? cancelledByDriver = freezed,
    Object? driverArriveDuration = freezed,
    Object? driverWaitDuration = freezed,
    Object? totalDuration = freezed,
    Object? totalDistance = freezed,
    Object? totalPrice = freezed,
    Object? tva = freezed,
    Object? revenue = freezed,
    Object? driverRevenue = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      driverUid: driverUid == freezed
          ? _value.driverUid
          : driverUid // ignore: cast_nullable_to_non_nullable
              as String,
      userUid: userUid == freezed
          ? _value.userUid
          : userUid // ignore: cast_nullable_to_non_nullable
              as String,
      path: path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as List<String>,
      pathToStart: pathToStart == freezed
          ? _value.pathToStart
          : pathToStart // ignore: cast_nullable_to_non_nullable
              as List<String>,
      disttext: disttext == freezed
          ? _value.disttext
          : disttext // ignore: cast_nullable_to_non_nullable
              as String,
      durtext: durtext == freezed
          ? _value.durtext
          : durtext // ignore: cast_nullable_to_non_nullable
              as String,
      distance: distance == freezed
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as int,
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      driverPickedAt: driverPickedAt == freezed
          ? _value.driverPickedAt
          : driverPickedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      ts: ts == freezed
          ? _value.ts
          : ts // ignore: cast_nullable_to_non_nullable
              as DateTime,
      price_per_km: price_per_km == freezed
          ? _value.price_per_km
          : price_per_km // ignore: cast_nullable_to_non_nullable
              as int,
      driverArrivedAt: driverArrivedAt == freezed
          ? _value.driverArrivedAt
          : driverArrivedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      startedAt: startedAt == freezed
          ? _value.startedAt
          : startedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      finishedAt: finishedAt == freezed
          ? _value.finishedAt
          : finishedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      start_name: start_name == freezed
          ? _value.start_name
          : start_name // ignore: cast_nullable_to_non_nullable
              as String?,
      dest_name: dest_name == freezed
          ? _value.dest_name
          : dest_name // ignore: cast_nullable_to_non_nullable
              as String?,
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
      destinationLng: destinationLng == freezed
          ? _value.destinationLng
          : destinationLng // ignore: cast_nullable_to_non_nullable
              as double?,
      destinationLat: destinationLat == freezed
          ? _value.destinationLat
          : destinationLat // ignore: cast_nullable_to_non_nullable
              as double?,
      startLng: startLng == freezed
          ? _value.startLng
          : startLng // ignore: cast_nullable_to_non_nullable
              as double?,
      startLat: startLat == freezed
          ? _value.startLat
          : startLat // ignore: cast_nullable_to_non_nullable
              as double?,
      currentDriverLocation: currentDriverLocation == freezed
          ? _value.currentDriverLocation
          : currentDriverLocation // ignore: cast_nullable_to_non_nullable
              as dynamic,
      currentUserLocation: currentUserLocation == freezed
          ? _value.currentUserLocation
          : currentUserLocation // ignore: cast_nullable_to_non_nullable
              as dynamic,
      start: start == freezed
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as dynamic,
      destination: destination == freezed
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as dynamic,
      cancelledByUser: cancelledByUser == freezed
          ? _value.cancelledByUser
          : cancelledByUser // ignore: cast_nullable_to_non_nullable
              as bool?,
      driverArrived: driverArrived == freezed
          ? _value.driverArrived
          : driverArrived // ignore: cast_nullable_to_non_nullable
              as bool?,
      started: started == freezed
          ? _value.started
          : started // ignore: cast_nullable_to_non_nullable
              as bool?,
      driving: driving == freezed
          ? _value.driving
          : driving // ignore: cast_nullable_to_non_nullable
              as bool?,
      finished: finished == freezed
          ? _value.finished
          : finished // ignore: cast_nullable_to_non_nullable
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
      totalDuration: totalDuration == freezed
          ? _value.totalDuration
          : totalDuration // ignore: cast_nullable_to_non_nullable
              as int?,
      totalDistance: totalDistance == freezed
          ? _value.totalDistance
          : totalDistance // ignore: cast_nullable_to_non_nullable
              as int?,
      totalPrice: totalPrice == freezed
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      tva: tva == freezed
          ? _value.tva
          : tva // ignore: cast_nullable_to_non_nullable
              as double?,
      revenue: revenue == freezed
          ? _value.revenue
          : revenue // ignore: cast_nullable_to_non_nullable
              as double?,
      driverRevenue: driverRevenue == freezed
          ? _value.driverRevenue
          : driverRevenue // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
abstract class _$RideCopyWith<$Res> implements $RideCopyWith<$Res> {
  factory _$RideCopyWith(_Ride value, $Res Function(_Ride) then) =
      __$RideCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String driverUid,
      String userUid,
      List<String> path,
      List<String> pathToStart,
      String disttext,
      String durtext,
      int distance,
      int duration,
      @TimestampConverter() DateTime driverPickedAt,
      @TimestampConverter() DateTime ts,
      int price_per_km,
      @TimestampOrNullConverter() DateTime? driverArrivedAt,
      @TimestampOrNullConverter() DateTime? startedAt,
      @TimestampOrNullConverter() DateTime? finishedAt,
      String? start_name,
      String? dest_name,
      double? driverLat,
      double? driverLng,
      double? userLat,
      double? userLng,
      double? destinationLng,
      double? destinationLat,
      double? startLng,
      double? startLat,
      dynamic currentDriverLocation,
      dynamic currentUserLocation,
      dynamic start,
      dynamic destination,
      bool? cancelledByUser,
      bool? driverArrived,
      bool? started,
      bool? driving,
      bool? finished,
      bool? cancelledByDriver,
      int? driverArriveDuration,
      int? driverWaitDuration,
      int? totalDuration,
      int? totalDistance,
      double? totalPrice,
      double? tva,
      double? revenue,
      double? driverRevenue});
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
    Object? id = freezed,
    Object? driverUid = freezed,
    Object? userUid = freezed,
    Object? path = freezed,
    Object? pathToStart = freezed,
    Object? disttext = freezed,
    Object? durtext = freezed,
    Object? distance = freezed,
    Object? duration = freezed,
    Object? driverPickedAt = freezed,
    Object? ts = freezed,
    Object? price_per_km = freezed,
    Object? driverArrivedAt = freezed,
    Object? startedAt = freezed,
    Object? finishedAt = freezed,
    Object? start_name = freezed,
    Object? dest_name = freezed,
    Object? driverLat = freezed,
    Object? driverLng = freezed,
    Object? userLat = freezed,
    Object? userLng = freezed,
    Object? destinationLng = freezed,
    Object? destinationLat = freezed,
    Object? startLng = freezed,
    Object? startLat = freezed,
    Object? currentDriverLocation = freezed,
    Object? currentUserLocation = freezed,
    Object? start = freezed,
    Object? destination = freezed,
    Object? cancelledByUser = freezed,
    Object? driverArrived = freezed,
    Object? started = freezed,
    Object? driving = freezed,
    Object? finished = freezed,
    Object? cancelledByDriver = freezed,
    Object? driverArriveDuration = freezed,
    Object? driverWaitDuration = freezed,
    Object? totalDuration = freezed,
    Object? totalDistance = freezed,
    Object? totalPrice = freezed,
    Object? tva = freezed,
    Object? revenue = freezed,
    Object? driverRevenue = freezed,
  }) {
    return _then(_Ride(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      driverUid: driverUid == freezed
          ? _value.driverUid
          : driverUid // ignore: cast_nullable_to_non_nullable
              as String,
      userUid: userUid == freezed
          ? _value.userUid
          : userUid // ignore: cast_nullable_to_non_nullable
              as String,
      path: path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as List<String>,
      pathToStart: pathToStart == freezed
          ? _value.pathToStart
          : pathToStart // ignore: cast_nullable_to_non_nullable
              as List<String>,
      disttext: disttext == freezed
          ? _value.disttext
          : disttext // ignore: cast_nullable_to_non_nullable
              as String,
      durtext: durtext == freezed
          ? _value.durtext
          : durtext // ignore: cast_nullable_to_non_nullable
              as String,
      distance: distance == freezed
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as int,
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      driverPickedAt: driverPickedAt == freezed
          ? _value.driverPickedAt
          : driverPickedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      ts: ts == freezed
          ? _value.ts
          : ts // ignore: cast_nullable_to_non_nullable
              as DateTime,
      price_per_km: price_per_km == freezed
          ? _value.price_per_km
          : price_per_km // ignore: cast_nullable_to_non_nullable
              as int,
      driverArrivedAt: driverArrivedAt == freezed
          ? _value.driverArrivedAt
          : driverArrivedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      startedAt: startedAt == freezed
          ? _value.startedAt
          : startedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      finishedAt: finishedAt == freezed
          ? _value.finishedAt
          : finishedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      start_name: start_name == freezed
          ? _value.start_name
          : start_name // ignore: cast_nullable_to_non_nullable
              as String?,
      dest_name: dest_name == freezed
          ? _value.dest_name
          : dest_name // ignore: cast_nullable_to_non_nullable
              as String?,
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
      destinationLng: destinationLng == freezed
          ? _value.destinationLng
          : destinationLng // ignore: cast_nullable_to_non_nullable
              as double?,
      destinationLat: destinationLat == freezed
          ? _value.destinationLat
          : destinationLat // ignore: cast_nullable_to_non_nullable
              as double?,
      startLng: startLng == freezed
          ? _value.startLng
          : startLng // ignore: cast_nullable_to_non_nullable
              as double?,
      startLat: startLat == freezed
          ? _value.startLat
          : startLat // ignore: cast_nullable_to_non_nullable
              as double?,
      currentDriverLocation: currentDriverLocation == freezed
          ? _value.currentDriverLocation
          : currentDriverLocation // ignore: cast_nullable_to_non_nullable
              as dynamic,
      currentUserLocation: currentUserLocation == freezed
          ? _value.currentUserLocation
          : currentUserLocation // ignore: cast_nullable_to_non_nullable
              as dynamic,
      start: start == freezed
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as dynamic,
      destination: destination == freezed
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as dynamic,
      cancelledByUser: cancelledByUser == freezed
          ? _value.cancelledByUser
          : cancelledByUser // ignore: cast_nullable_to_non_nullable
              as bool?,
      driverArrived: driverArrived == freezed
          ? _value.driverArrived
          : driverArrived // ignore: cast_nullable_to_non_nullable
              as bool?,
      started: started == freezed
          ? _value.started
          : started // ignore: cast_nullable_to_non_nullable
              as bool?,
      driving: driving == freezed
          ? _value.driving
          : driving // ignore: cast_nullable_to_non_nullable
              as bool?,
      finished: finished == freezed
          ? _value.finished
          : finished // ignore: cast_nullable_to_non_nullable
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
      totalDuration: totalDuration == freezed
          ? _value.totalDuration
          : totalDuration // ignore: cast_nullable_to_non_nullable
              as int?,
      totalDistance: totalDistance == freezed
          ? _value.totalDistance
          : totalDistance // ignore: cast_nullable_to_non_nullable
              as int?,
      totalPrice: totalPrice == freezed
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      tva: tva == freezed
          ? _value.tva
          : tva // ignore: cast_nullable_to_non_nullable
              as double?,
      revenue: revenue == freezed
          ? _value.revenue
          : revenue // ignore: cast_nullable_to_non_nullable
              as double?,
      driverRevenue: driverRevenue == freezed
          ? _value.driverRevenue
          : driverRevenue // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc

class _$_Ride implements _Ride {
  const _$_Ride(
      {required this.id,
      required this.driverUid,
      required this.userUid,
      required this.path,
      required this.pathToStart,
      required this.disttext,
      required this.durtext,
      required this.distance,
      required this.duration,
      @TimestampConverter() required this.driverPickedAt,
      @TimestampConverter() required this.ts,
      required this.price_per_km,
      @TimestampOrNullConverter() this.driverArrivedAt,
      @TimestampOrNullConverter() this.startedAt,
      @TimestampOrNullConverter() this.finishedAt,
      this.start_name,
      this.dest_name,
      this.driverLat,
      this.driverLng,
      this.userLat,
      this.userLng,
      this.destinationLng,
      this.destinationLat,
      this.startLng,
      this.startLat,
      this.currentDriverLocation,
      this.currentUserLocation,
      this.start,
      this.destination,
      this.cancelledByUser,
      this.driverArrived,
      this.started,
      this.driving,
      this.finished,
      this.cancelledByDriver,
      this.driverArriveDuration,
      this.driverWaitDuration,
      this.totalDuration,
      this.totalDistance,
      this.totalPrice,
      this.tva,
      this.revenue,
      this.driverRevenue});

  @override
  final String id;
  @override
  final String driverUid;
  @override
  final String userUid;
  @override
  final List<String> path;
  @override
  final List<String> pathToStart;
  @override
  final String disttext;
  @override
  final String durtext;
  @override
  final int distance;
  @override
  final int duration;
  @override
  @TimestampConverter()
  final DateTime driverPickedAt;
  @override
  @TimestampConverter()
  final DateTime ts;
  @override
  final int price_per_km;
  @override
  @TimestampOrNullConverter()
  final DateTime? driverArrivedAt;
  @override
  @TimestampOrNullConverter()
  final DateTime? startedAt;
  @override
  @TimestampOrNullConverter()
  final DateTime? finishedAt;
  @override
  final String? start_name;
  @override
  final String? dest_name;
  @override
  final double? driverLat;
  @override
  final double? driverLng;
  @override
  final double? userLat;
  @override
  final double? userLng;
  @override
  final double? destinationLng;
  @override
  final double? destinationLat;
  @override
  final double? startLng;
  @override
  final double? startLat;
  @override
  final dynamic currentDriverLocation;
  @override
  final dynamic currentUserLocation;
  @override
  final dynamic start;
  @override
  final dynamic destination;
  @override
  final bool? cancelledByUser;
  @override
  final bool? driverArrived;
  @override
  final bool? started;
  @override
  final bool? driving;
  @override
  final bool? finished;
  @override
  final bool? cancelledByDriver;
  @override
  final int? driverArriveDuration;
  @override
  final int? driverWaitDuration;
  @override
  final int? totalDuration;
  @override
  final int? totalDistance;
  @override
  final double? totalPrice;
  @override
  final double? tva;
  @override
  final double? revenue;
  @override
  final double? driverRevenue;

  @override
  String toString() {
    return 'Ride(id: $id, driverUid: $driverUid, userUid: $userUid, path: $path, pathToStart: $pathToStart, disttext: $disttext, durtext: $durtext, distance: $distance, duration: $duration, driverPickedAt: $driverPickedAt, ts: $ts, price_per_km: $price_per_km, driverArrivedAt: $driverArrivedAt, startedAt: $startedAt, finishedAt: $finishedAt, start_name: $start_name, dest_name: $dest_name, driverLat: $driverLat, driverLng: $driverLng, userLat: $userLat, userLng: $userLng, destinationLng: $destinationLng, destinationLat: $destinationLat, startLng: $startLng, startLat: $startLat, currentDriverLocation: $currentDriverLocation, currentUserLocation: $currentUserLocation, start: $start, destination: $destination, cancelledByUser: $cancelledByUser, driverArrived: $driverArrived, started: $started, driving: $driving, finished: $finished, cancelledByDriver: $cancelledByDriver, driverArriveDuration: $driverArriveDuration, driverWaitDuration: $driverWaitDuration, totalDuration: $totalDuration, totalDistance: $totalDistance, totalPrice: $totalPrice, tva: $tva, revenue: $revenue, driverRevenue: $driverRevenue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Ride &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.driverUid, driverUid) &&
            const DeepCollectionEquality().equals(other.userUid, userUid) &&
            const DeepCollectionEquality().equals(other.path, path) &&
            const DeepCollectionEquality()
                .equals(other.pathToStart, pathToStart) &&
            const DeepCollectionEquality().equals(other.disttext, disttext) &&
            const DeepCollectionEquality().equals(other.durtext, durtext) &&
            const DeepCollectionEquality().equals(other.distance, distance) &&
            const DeepCollectionEquality().equals(other.duration, duration) &&
            const DeepCollectionEquality()
                .equals(other.driverPickedAt, driverPickedAt) &&
            const DeepCollectionEquality().equals(other.ts, ts) &&
            const DeepCollectionEquality()
                .equals(other.price_per_km, price_per_km) &&
            const DeepCollectionEquality()
                .equals(other.driverArrivedAt, driverArrivedAt) &&
            const DeepCollectionEquality().equals(other.startedAt, startedAt) &&
            const DeepCollectionEquality()
                .equals(other.finishedAt, finishedAt) &&
            const DeepCollectionEquality()
                .equals(other.start_name, start_name) &&
            const DeepCollectionEquality().equals(other.dest_name, dest_name) &&
            const DeepCollectionEquality().equals(other.driverLat, driverLat) &&
            const DeepCollectionEquality().equals(other.driverLng, driverLng) &&
            const DeepCollectionEquality().equals(other.userLat, userLat) &&
            const DeepCollectionEquality().equals(other.userLng, userLng) &&
            const DeepCollectionEquality()
                .equals(other.destinationLng, destinationLng) &&
            const DeepCollectionEquality()
                .equals(other.destinationLat, destinationLat) &&
            const DeepCollectionEquality().equals(other.startLng, startLng) &&
            const DeepCollectionEquality().equals(other.startLat, startLat) &&
            const DeepCollectionEquality()
                .equals(other.currentDriverLocation, currentDriverLocation) &&
            const DeepCollectionEquality()
                .equals(other.currentUserLocation, currentUserLocation) &&
            const DeepCollectionEquality().equals(other.start, start) &&
            const DeepCollectionEquality()
                .equals(other.destination, destination) &&
            const DeepCollectionEquality()
                .equals(other.cancelledByUser, cancelledByUser) &&
            const DeepCollectionEquality()
                .equals(other.driverArrived, driverArrived) &&
            const DeepCollectionEquality().equals(other.started, started) &&
            const DeepCollectionEquality().equals(other.driving, driving) &&
            const DeepCollectionEquality().equals(other.finished, finished) &&
            const DeepCollectionEquality()
                .equals(other.cancelledByDriver, cancelledByDriver) &&
            const DeepCollectionEquality()
                .equals(other.driverArriveDuration, driverArriveDuration) &&
            const DeepCollectionEquality()
                .equals(other.driverWaitDuration, driverWaitDuration) &&
            const DeepCollectionEquality()
                .equals(other.totalDuration, totalDuration) &&
            const DeepCollectionEquality()
                .equals(other.totalDistance, totalDistance) &&
            const DeepCollectionEquality()
                .equals(other.totalPrice, totalPrice) &&
            const DeepCollectionEquality().equals(other.tva, tva) &&
            const DeepCollectionEquality().equals(other.revenue, revenue) &&
            const DeepCollectionEquality()
                .equals(other.driverRevenue, driverRevenue));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(id),
        const DeepCollectionEquality().hash(driverUid),
        const DeepCollectionEquality().hash(userUid),
        const DeepCollectionEquality().hash(path),
        const DeepCollectionEquality().hash(pathToStart),
        const DeepCollectionEquality().hash(disttext),
        const DeepCollectionEquality().hash(durtext),
        const DeepCollectionEquality().hash(distance),
        const DeepCollectionEquality().hash(duration),
        const DeepCollectionEquality().hash(driverPickedAt),
        const DeepCollectionEquality().hash(ts),
        const DeepCollectionEquality().hash(price_per_km),
        const DeepCollectionEquality().hash(driverArrivedAt),
        const DeepCollectionEquality().hash(startedAt),
        const DeepCollectionEquality().hash(finishedAt),
        const DeepCollectionEquality().hash(start_name),
        const DeepCollectionEquality().hash(dest_name),
        const DeepCollectionEquality().hash(driverLat),
        const DeepCollectionEquality().hash(driverLng),
        const DeepCollectionEquality().hash(userLat),
        const DeepCollectionEquality().hash(userLng),
        const DeepCollectionEquality().hash(destinationLng),
        const DeepCollectionEquality().hash(destinationLat),
        const DeepCollectionEquality().hash(startLng),
        const DeepCollectionEquality().hash(startLat),
        const DeepCollectionEquality().hash(currentDriverLocation),
        const DeepCollectionEquality().hash(currentUserLocation),
        const DeepCollectionEquality().hash(start),
        const DeepCollectionEquality().hash(destination),
        const DeepCollectionEquality().hash(cancelledByUser),
        const DeepCollectionEquality().hash(driverArrived),
        const DeepCollectionEquality().hash(started),
        const DeepCollectionEquality().hash(driving),
        const DeepCollectionEquality().hash(finished),
        const DeepCollectionEquality().hash(cancelledByDriver),
        const DeepCollectionEquality().hash(driverArriveDuration),
        const DeepCollectionEquality().hash(driverWaitDuration),
        const DeepCollectionEquality().hash(totalDuration),
        const DeepCollectionEquality().hash(totalDistance),
        const DeepCollectionEquality().hash(totalPrice),
        const DeepCollectionEquality().hash(tva),
        const DeepCollectionEquality().hash(revenue),
        const DeepCollectionEquality().hash(driverRevenue)
      ]);

  @JsonKey(ignore: true)
  @override
  _$RideCopyWith<_Ride> get copyWith =>
      __$RideCopyWithImpl<_Ride>(this, _$identity);
}

abstract class _Ride implements Ride {
  const factory _Ride(
      {required String id,
      required String driverUid,
      required String userUid,
      required List<String> path,
      required List<String> pathToStart,
      required String disttext,
      required String durtext,
      required int distance,
      required int duration,
      @TimestampConverter() required DateTime driverPickedAt,
      @TimestampConverter() required DateTime ts,
      required int price_per_km,
      @TimestampOrNullConverter() DateTime? driverArrivedAt,
      @TimestampOrNullConverter() DateTime? startedAt,
      @TimestampOrNullConverter() DateTime? finishedAt,
      String? start_name,
      String? dest_name,
      double? driverLat,
      double? driverLng,
      double? userLat,
      double? userLng,
      double? destinationLng,
      double? destinationLat,
      double? startLng,
      double? startLat,
      dynamic currentDriverLocation,
      dynamic currentUserLocation,
      dynamic start,
      dynamic destination,
      bool? cancelledByUser,
      bool? driverArrived,
      bool? started,
      bool? driving,
      bool? finished,
      bool? cancelledByDriver,
      int? driverArriveDuration,
      int? driverWaitDuration,
      int? totalDuration,
      int? totalDistance,
      double? totalPrice,
      double? tva,
      double? revenue,
      double? driverRevenue}) = _$_Ride;

  @override
  String get id;
  @override
  String get driverUid;
  @override
  String get userUid;
  @override
  List<String> get path;
  @override
  List<String> get pathToStart;
  @override
  String get disttext;
  @override
  String get durtext;
  @override
  int get distance;
  @override
  int get duration;
  @override
  @TimestampConverter()
  DateTime get driverPickedAt;
  @override
  @TimestampConverter()
  DateTime get ts;
  @override
  int get price_per_km;
  @override
  @TimestampOrNullConverter()
  DateTime? get driverArrivedAt;
  @override
  @TimestampOrNullConverter()
  DateTime? get startedAt;
  @override
  @TimestampOrNullConverter()
  DateTime? get finishedAt;
  @override
  String? get start_name;
  @override
  String? get dest_name;
  @override
  double? get driverLat;
  @override
  double? get driverLng;
  @override
  double? get userLat;
  @override
  double? get userLng;
  @override
  double? get destinationLng;
  @override
  double? get destinationLat;
  @override
  double? get startLng;
  @override
  double? get startLat;
  @override
  dynamic get currentDriverLocation;
  @override
  dynamic get currentUserLocation;
  @override
  dynamic get start;
  @override
  dynamic get destination;
  @override
  bool? get cancelledByUser;
  @override
  bool? get driverArrived;
  @override
  bool? get started;
  @override
  bool? get driving;
  @override
  bool? get finished;
  @override
  bool? get cancelledByDriver;
  @override
  int? get driverArriveDuration;
  @override
  int? get driverWaitDuration;
  @override
  int? get totalDuration;
  @override
  int? get totalDistance;
  @override
  double? get totalPrice;
  @override
  double? get tva;
  @override
  double? get revenue;
  @override
  double? get driverRevenue;
  @override
  @JsonKey(ignore: true)
  _$RideCopyWith<_Ride> get copyWith => throw _privateConstructorUsedError;
}

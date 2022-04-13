// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'nearby_search.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NearbySearch _$NearbySearchFromJson(Map<String, dynamic> json) {
  return _NearbySearch.fromJson(json);
}

/// @nodoc
class _$NearbySearchTearOff {
  const _$NearbySearchTearOff();

  _NearbySearch call(
      {required String name,
      required NearbyGeometry geometry,
      required List<String> types}) {
    return _NearbySearch(
      name: name,
      geometry: geometry,
      types: types,
    );
  }

  NearbySearch fromJson(Map<String, Object?> json) {
    return NearbySearch.fromJson(json);
  }
}

/// @nodoc
const $NearbySearch = _$NearbySearchTearOff();

/// @nodoc
mixin _$NearbySearch {
  String get name => throw _privateConstructorUsedError;
  NearbyGeometry get geometry => throw _privateConstructorUsedError;
  List<String> get types => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NearbySearchCopyWith<NearbySearch> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NearbySearchCopyWith<$Res> {
  factory $NearbySearchCopyWith(
          NearbySearch value, $Res Function(NearbySearch) then) =
      _$NearbySearchCopyWithImpl<$Res>;
  $Res call({String name, NearbyGeometry geometry, List<String> types});

  $NearbyGeometryCopyWith<$Res> get geometry;
}

/// @nodoc
class _$NearbySearchCopyWithImpl<$Res> implements $NearbySearchCopyWith<$Res> {
  _$NearbySearchCopyWithImpl(this._value, this._then);

  final NearbySearch _value;
  // ignore: unused_field
  final $Res Function(NearbySearch) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? geometry = freezed,
    Object? types = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      geometry: geometry == freezed
          ? _value.geometry
          : geometry // ignore: cast_nullable_to_non_nullable
              as NearbyGeometry,
      types: types == freezed
          ? _value.types
          : types // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }

  @override
  $NearbyGeometryCopyWith<$Res> get geometry {
    return $NearbyGeometryCopyWith<$Res>(_value.geometry, (value) {
      return _then(_value.copyWith(geometry: value));
    });
  }
}

/// @nodoc
abstract class _$NearbySearchCopyWith<$Res>
    implements $NearbySearchCopyWith<$Res> {
  factory _$NearbySearchCopyWith(
          _NearbySearch value, $Res Function(_NearbySearch) then) =
      __$NearbySearchCopyWithImpl<$Res>;
  @override
  $Res call({String name, NearbyGeometry geometry, List<String> types});

  @override
  $NearbyGeometryCopyWith<$Res> get geometry;
}

/// @nodoc
class __$NearbySearchCopyWithImpl<$Res> extends _$NearbySearchCopyWithImpl<$Res>
    implements _$NearbySearchCopyWith<$Res> {
  __$NearbySearchCopyWithImpl(
      _NearbySearch _value, $Res Function(_NearbySearch) _then)
      : super(_value, (v) => _then(v as _NearbySearch));

  @override
  _NearbySearch get _value => super._value as _NearbySearch;

  @override
  $Res call({
    Object? name = freezed,
    Object? geometry = freezed,
    Object? types = freezed,
  }) {
    return _then(_NearbySearch(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      geometry: geometry == freezed
          ? _value.geometry
          : geometry // ignore: cast_nullable_to_non_nullable
              as NearbyGeometry,
      types: types == freezed
          ? _value.types
          : types // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NearbySearch implements _NearbySearch {
  const _$_NearbySearch(
      {required this.name, required this.geometry, required this.types});

  factory _$_NearbySearch.fromJson(Map<String, dynamic> json) =>
      _$$_NearbySearchFromJson(json);

  @override
  final String name;
  @override
  final NearbyGeometry geometry;
  @override
  final List<String> types;

  @override
  String toString() {
    return 'NearbySearch(name: $name, geometry: $geometry, types: $types)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NearbySearch &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.geometry, geometry) &&
            const DeepCollectionEquality().equals(other.types, types));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(geometry),
      const DeepCollectionEquality().hash(types));

  @JsonKey(ignore: true)
  @override
  _$NearbySearchCopyWith<_NearbySearch> get copyWith =>
      __$NearbySearchCopyWithImpl<_NearbySearch>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NearbySearchToJson(this);
  }
}

abstract class _NearbySearch implements NearbySearch {
  const factory _NearbySearch(
      {required String name,
      required NearbyGeometry geometry,
      required List<String> types}) = _$_NearbySearch;

  factory _NearbySearch.fromJson(Map<String, dynamic> json) =
      _$_NearbySearch.fromJson;

  @override
  String get name;
  @override
  NearbyGeometry get geometry;
  @override
  List<String> get types;
  @override
  @JsonKey(ignore: true)
  _$NearbySearchCopyWith<_NearbySearch> get copyWith =>
      throw _privateConstructorUsedError;
}

NearbySearchResult _$NearbySearchResultFromJson(Map<String, dynamic> json) {
  return _NearbySearchResult.fromJson(json);
}

/// @nodoc
class _$NearbySearchResultTearOff {
  const _$NearbySearchResultTearOff();

  _NearbySearchResult call({required List<NearbySearch> results}) {
    return _NearbySearchResult(
      results: results,
    );
  }

  NearbySearchResult fromJson(Map<String, Object?> json) {
    return NearbySearchResult.fromJson(json);
  }
}

/// @nodoc
const $NearbySearchResult = _$NearbySearchResultTearOff();

/// @nodoc
mixin _$NearbySearchResult {
  List<NearbySearch> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NearbySearchResultCopyWith<NearbySearchResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NearbySearchResultCopyWith<$Res> {
  factory $NearbySearchResultCopyWith(
          NearbySearchResult value, $Res Function(NearbySearchResult) then) =
      _$NearbySearchResultCopyWithImpl<$Res>;
  $Res call({List<NearbySearch> results});
}

/// @nodoc
class _$NearbySearchResultCopyWithImpl<$Res>
    implements $NearbySearchResultCopyWith<$Res> {
  _$NearbySearchResultCopyWithImpl(this._value, this._then);

  final NearbySearchResult _value;
  // ignore: unused_field
  final $Res Function(NearbySearchResult) _then;

  @override
  $Res call({
    Object? results = freezed,
  }) {
    return _then(_value.copyWith(
      results: results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<NearbySearch>,
    ));
  }
}

/// @nodoc
abstract class _$NearbySearchResultCopyWith<$Res>
    implements $NearbySearchResultCopyWith<$Res> {
  factory _$NearbySearchResultCopyWith(
          _NearbySearchResult value, $Res Function(_NearbySearchResult) then) =
      __$NearbySearchResultCopyWithImpl<$Res>;
  @override
  $Res call({List<NearbySearch> results});
}

/// @nodoc
class __$NearbySearchResultCopyWithImpl<$Res>
    extends _$NearbySearchResultCopyWithImpl<$Res>
    implements _$NearbySearchResultCopyWith<$Res> {
  __$NearbySearchResultCopyWithImpl(
      _NearbySearchResult _value, $Res Function(_NearbySearchResult) _then)
      : super(_value, (v) => _then(v as _NearbySearchResult));

  @override
  _NearbySearchResult get _value => super._value as _NearbySearchResult;

  @override
  $Res call({
    Object? results = freezed,
  }) {
    return _then(_NearbySearchResult(
      results: results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<NearbySearch>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NearbySearchResult implements _NearbySearchResult {
  const _$_NearbySearchResult({required this.results});

  factory _$_NearbySearchResult.fromJson(Map<String, dynamic> json) =>
      _$$_NearbySearchResultFromJson(json);

  @override
  final List<NearbySearch> results;

  @override
  String toString() {
    return 'NearbySearchResult(results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NearbySearchResult &&
            const DeepCollectionEquality().equals(other.results, results));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(results));

  @JsonKey(ignore: true)
  @override
  _$NearbySearchResultCopyWith<_NearbySearchResult> get copyWith =>
      __$NearbySearchResultCopyWithImpl<_NearbySearchResult>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NearbySearchResultToJson(this);
  }
}

abstract class _NearbySearchResult implements NearbySearchResult {
  const factory _NearbySearchResult({required List<NearbySearch> results}) =
      _$_NearbySearchResult;

  factory _NearbySearchResult.fromJson(Map<String, dynamic> json) =
      _$_NearbySearchResult.fromJson;

  @override
  List<NearbySearch> get results;
  @override
  @JsonKey(ignore: true)
  _$NearbySearchResultCopyWith<_NearbySearchResult> get copyWith =>
      throw _privateConstructorUsedError;
}

NearbyGeometry _$NearbyGeometryFromJson(Map<String, dynamic> json) {
  return _NearbyGeometry.fromJson(json);
}

/// @nodoc
class _$NearbyGeometryTearOff {
  const _$NearbyGeometryTearOff();

  _NearbyGeometry call({required NearbyGeometryLocation location}) {
    return _NearbyGeometry(
      location: location,
    );
  }

  NearbyGeometry fromJson(Map<String, Object?> json) {
    return NearbyGeometry.fromJson(json);
  }
}

/// @nodoc
const $NearbyGeometry = _$NearbyGeometryTearOff();

/// @nodoc
mixin _$NearbyGeometry {
  NearbyGeometryLocation get location => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NearbyGeometryCopyWith<NearbyGeometry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NearbyGeometryCopyWith<$Res> {
  factory $NearbyGeometryCopyWith(
          NearbyGeometry value, $Res Function(NearbyGeometry) then) =
      _$NearbyGeometryCopyWithImpl<$Res>;
  $Res call({NearbyGeometryLocation location});

  $NearbyGeometryLocationCopyWith<$Res> get location;
}

/// @nodoc
class _$NearbyGeometryCopyWithImpl<$Res>
    implements $NearbyGeometryCopyWith<$Res> {
  _$NearbyGeometryCopyWithImpl(this._value, this._then);

  final NearbyGeometry _value;
  // ignore: unused_field
  final $Res Function(NearbyGeometry) _then;

  @override
  $Res call({
    Object? location = freezed,
  }) {
    return _then(_value.copyWith(
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as NearbyGeometryLocation,
    ));
  }

  @override
  $NearbyGeometryLocationCopyWith<$Res> get location {
    return $NearbyGeometryLocationCopyWith<$Res>(_value.location, (value) {
      return _then(_value.copyWith(location: value));
    });
  }
}

/// @nodoc
abstract class _$NearbyGeometryCopyWith<$Res>
    implements $NearbyGeometryCopyWith<$Res> {
  factory _$NearbyGeometryCopyWith(
          _NearbyGeometry value, $Res Function(_NearbyGeometry) then) =
      __$NearbyGeometryCopyWithImpl<$Res>;
  @override
  $Res call({NearbyGeometryLocation location});

  @override
  $NearbyGeometryLocationCopyWith<$Res> get location;
}

/// @nodoc
class __$NearbyGeometryCopyWithImpl<$Res>
    extends _$NearbyGeometryCopyWithImpl<$Res>
    implements _$NearbyGeometryCopyWith<$Res> {
  __$NearbyGeometryCopyWithImpl(
      _NearbyGeometry _value, $Res Function(_NearbyGeometry) _then)
      : super(_value, (v) => _then(v as _NearbyGeometry));

  @override
  _NearbyGeometry get _value => super._value as _NearbyGeometry;

  @override
  $Res call({
    Object? location = freezed,
  }) {
    return _then(_NearbyGeometry(
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as NearbyGeometryLocation,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NearbyGeometry implements _NearbyGeometry {
  const _$_NearbyGeometry({required this.location});

  factory _$_NearbyGeometry.fromJson(Map<String, dynamic> json) =>
      _$$_NearbyGeometryFromJson(json);

  @override
  final NearbyGeometryLocation location;

  @override
  String toString() {
    return 'NearbyGeometry(location: $location)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NearbyGeometry &&
            const DeepCollectionEquality().equals(other.location, location));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(location));

  @JsonKey(ignore: true)
  @override
  _$NearbyGeometryCopyWith<_NearbyGeometry> get copyWith =>
      __$NearbyGeometryCopyWithImpl<_NearbyGeometry>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NearbyGeometryToJson(this);
  }
}

abstract class _NearbyGeometry implements NearbyGeometry {
  const factory _NearbyGeometry({required NearbyGeometryLocation location}) =
      _$_NearbyGeometry;

  factory _NearbyGeometry.fromJson(Map<String, dynamic> json) =
      _$_NearbyGeometry.fromJson;

  @override
  NearbyGeometryLocation get location;
  @override
  @JsonKey(ignore: true)
  _$NearbyGeometryCopyWith<_NearbyGeometry> get copyWith =>
      throw _privateConstructorUsedError;
}

NearbyGeometryLocation _$NearbyGeometryLocationFromJson(
    Map<String, dynamic> json) {
  return _NearbyGeometryLocation.fromJson(json);
}

/// @nodoc
class _$NearbyGeometryLocationTearOff {
  const _$NearbyGeometryLocationTearOff();

  _NearbyGeometryLocation call({required double lat, required double lng}) {
    return _NearbyGeometryLocation(
      lat: lat,
      lng: lng,
    );
  }

  NearbyGeometryLocation fromJson(Map<String, Object?> json) {
    return NearbyGeometryLocation.fromJson(json);
  }
}

/// @nodoc
const $NearbyGeometryLocation = _$NearbyGeometryLocationTearOff();

/// @nodoc
mixin _$NearbyGeometryLocation {
  double get lat => throw _privateConstructorUsedError;
  double get lng => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NearbyGeometryLocationCopyWith<NearbyGeometryLocation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NearbyGeometryLocationCopyWith<$Res> {
  factory $NearbyGeometryLocationCopyWith(NearbyGeometryLocation value,
          $Res Function(NearbyGeometryLocation) then) =
      _$NearbyGeometryLocationCopyWithImpl<$Res>;
  $Res call({double lat, double lng});
}

/// @nodoc
class _$NearbyGeometryLocationCopyWithImpl<$Res>
    implements $NearbyGeometryLocationCopyWith<$Res> {
  _$NearbyGeometryLocationCopyWithImpl(this._value, this._then);

  final NearbyGeometryLocation _value;
  // ignore: unused_field
  final $Res Function(NearbyGeometryLocation) _then;

  @override
  $Res call({
    Object? lat = freezed,
    Object? lng = freezed,
  }) {
    return _then(_value.copyWith(
      lat: lat == freezed
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lng: lng == freezed
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$NearbyGeometryLocationCopyWith<$Res>
    implements $NearbyGeometryLocationCopyWith<$Res> {
  factory _$NearbyGeometryLocationCopyWith(_NearbyGeometryLocation value,
          $Res Function(_NearbyGeometryLocation) then) =
      __$NearbyGeometryLocationCopyWithImpl<$Res>;
  @override
  $Res call({double lat, double lng});
}

/// @nodoc
class __$NearbyGeometryLocationCopyWithImpl<$Res>
    extends _$NearbyGeometryLocationCopyWithImpl<$Res>
    implements _$NearbyGeometryLocationCopyWith<$Res> {
  __$NearbyGeometryLocationCopyWithImpl(_NearbyGeometryLocation _value,
      $Res Function(_NearbyGeometryLocation) _then)
      : super(_value, (v) => _then(v as _NearbyGeometryLocation));

  @override
  _NearbyGeometryLocation get _value => super._value as _NearbyGeometryLocation;

  @override
  $Res call({
    Object? lat = freezed,
    Object? lng = freezed,
  }) {
    return _then(_NearbyGeometryLocation(
      lat: lat == freezed
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lng: lng == freezed
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NearbyGeometryLocation implements _NearbyGeometryLocation {
  const _$_NearbyGeometryLocation({required this.lat, required this.lng});

  factory _$_NearbyGeometryLocation.fromJson(Map<String, dynamic> json) =>
      _$$_NearbyGeometryLocationFromJson(json);

  @override
  final double lat;
  @override
  final double lng;

  @override
  String toString() {
    return 'NearbyGeometryLocation(lat: $lat, lng: $lng)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NearbyGeometryLocation &&
            const DeepCollectionEquality().equals(other.lat, lat) &&
            const DeepCollectionEquality().equals(other.lng, lng));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(lat),
      const DeepCollectionEquality().hash(lng));

  @JsonKey(ignore: true)
  @override
  _$NearbyGeometryLocationCopyWith<_NearbyGeometryLocation> get copyWith =>
      __$NearbyGeometryLocationCopyWithImpl<_NearbyGeometryLocation>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NearbyGeometryLocationToJson(this);
  }
}

abstract class _NearbyGeometryLocation implements NearbyGeometryLocation {
  const factory _NearbyGeometryLocation(
      {required double lat, required double lng}) = _$_NearbyGeometryLocation;

  factory _NearbyGeometryLocation.fromJson(Map<String, dynamic> json) =
      _$_NearbyGeometryLocation.fromJson;

  @override
  double get lat;
  @override
  double get lng;
  @override
  @JsonKey(ignore: true)
  _$NearbyGeometryLocationCopyWith<_NearbyGeometryLocation> get copyWith =>
      throw _privateConstructorUsedError;
}

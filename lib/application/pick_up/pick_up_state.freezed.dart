// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pick_up_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PickUpStateTearOff {
  const _$PickUpStateTearOff();

  _PickUpState call(
      {required bool isGeocodingFromMapLoaidng,
      required bool isNearbyPlacesLoading,
      required String nearbyQuery,
      NearbySearch? dropoffPlace,
      NearbySearch? pickupPlace,
      required List<NearbySearch> places}) {
    return _PickUpState(
      isGeocodingFromMapLoaidng: isGeocodingFromMapLoaidng,
      isNearbyPlacesLoading: isNearbyPlacesLoading,
      nearbyQuery: nearbyQuery,
      dropoffPlace: dropoffPlace,
      pickupPlace: pickupPlace,
      places: places,
    );
  }
}

/// @nodoc
const $PickUpState = _$PickUpStateTearOff();

/// @nodoc
mixin _$PickUpState {
  bool get isGeocodingFromMapLoaidng => throw _privateConstructorUsedError;
  bool get isNearbyPlacesLoading => throw _privateConstructorUsedError;
  String get nearbyQuery => throw _privateConstructorUsedError;
  NearbySearch? get dropoffPlace => throw _privateConstructorUsedError;
  NearbySearch? get pickupPlace => throw _privateConstructorUsedError;
  List<NearbySearch> get places => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PickUpStateCopyWith<PickUpState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PickUpStateCopyWith<$Res> {
  factory $PickUpStateCopyWith(
          PickUpState value, $Res Function(PickUpState) then) =
      _$PickUpStateCopyWithImpl<$Res>;
  $Res call(
      {bool isGeocodingFromMapLoaidng,
      bool isNearbyPlacesLoading,
      String nearbyQuery,
      NearbySearch? dropoffPlace,
      NearbySearch? pickupPlace,
      List<NearbySearch> places});

  $NearbySearchCopyWith<$Res>? get dropoffPlace;
  $NearbySearchCopyWith<$Res>? get pickupPlace;
}

/// @nodoc
class _$PickUpStateCopyWithImpl<$Res> implements $PickUpStateCopyWith<$Res> {
  _$PickUpStateCopyWithImpl(this._value, this._then);

  final PickUpState _value;
  // ignore: unused_field
  final $Res Function(PickUpState) _then;

  @override
  $Res call({
    Object? isGeocodingFromMapLoaidng = freezed,
    Object? isNearbyPlacesLoading = freezed,
    Object? nearbyQuery = freezed,
    Object? dropoffPlace = freezed,
    Object? pickupPlace = freezed,
    Object? places = freezed,
  }) {
    return _then(_value.copyWith(
      isGeocodingFromMapLoaidng: isGeocodingFromMapLoaidng == freezed
          ? _value.isGeocodingFromMapLoaidng
          : isGeocodingFromMapLoaidng // ignore: cast_nullable_to_non_nullable
              as bool,
      isNearbyPlacesLoading: isNearbyPlacesLoading == freezed
          ? _value.isNearbyPlacesLoading
          : isNearbyPlacesLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      nearbyQuery: nearbyQuery == freezed
          ? _value.nearbyQuery
          : nearbyQuery // ignore: cast_nullable_to_non_nullable
              as String,
      dropoffPlace: dropoffPlace == freezed
          ? _value.dropoffPlace
          : dropoffPlace // ignore: cast_nullable_to_non_nullable
              as NearbySearch?,
      pickupPlace: pickupPlace == freezed
          ? _value.pickupPlace
          : pickupPlace // ignore: cast_nullable_to_non_nullable
              as NearbySearch?,
      places: places == freezed
          ? _value.places
          : places // ignore: cast_nullable_to_non_nullable
              as List<NearbySearch>,
    ));
  }

  @override
  $NearbySearchCopyWith<$Res>? get dropoffPlace {
    if (_value.dropoffPlace == null) {
      return null;
    }

    return $NearbySearchCopyWith<$Res>(_value.dropoffPlace!, (value) {
      return _then(_value.copyWith(dropoffPlace: value));
    });
  }

  @override
  $NearbySearchCopyWith<$Res>? get pickupPlace {
    if (_value.pickupPlace == null) {
      return null;
    }

    return $NearbySearchCopyWith<$Res>(_value.pickupPlace!, (value) {
      return _then(_value.copyWith(pickupPlace: value));
    });
  }
}

/// @nodoc
abstract class _$PickUpStateCopyWith<$Res>
    implements $PickUpStateCopyWith<$Res> {
  factory _$PickUpStateCopyWith(
          _PickUpState value, $Res Function(_PickUpState) then) =
      __$PickUpStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isGeocodingFromMapLoaidng,
      bool isNearbyPlacesLoading,
      String nearbyQuery,
      NearbySearch? dropoffPlace,
      NearbySearch? pickupPlace,
      List<NearbySearch> places});

  @override
  $NearbySearchCopyWith<$Res>? get dropoffPlace;
  @override
  $NearbySearchCopyWith<$Res>? get pickupPlace;
}

/// @nodoc
class __$PickUpStateCopyWithImpl<$Res> extends _$PickUpStateCopyWithImpl<$Res>
    implements _$PickUpStateCopyWith<$Res> {
  __$PickUpStateCopyWithImpl(
      _PickUpState _value, $Res Function(_PickUpState) _then)
      : super(_value, (v) => _then(v as _PickUpState));

  @override
  _PickUpState get _value => super._value as _PickUpState;

  @override
  $Res call({
    Object? isGeocodingFromMapLoaidng = freezed,
    Object? isNearbyPlacesLoading = freezed,
    Object? nearbyQuery = freezed,
    Object? dropoffPlace = freezed,
    Object? pickupPlace = freezed,
    Object? places = freezed,
  }) {
    return _then(_PickUpState(
      isGeocodingFromMapLoaidng: isGeocodingFromMapLoaidng == freezed
          ? _value.isGeocodingFromMapLoaidng
          : isGeocodingFromMapLoaidng // ignore: cast_nullable_to_non_nullable
              as bool,
      isNearbyPlacesLoading: isNearbyPlacesLoading == freezed
          ? _value.isNearbyPlacesLoading
          : isNearbyPlacesLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      nearbyQuery: nearbyQuery == freezed
          ? _value.nearbyQuery
          : nearbyQuery // ignore: cast_nullable_to_non_nullable
              as String,
      dropoffPlace: dropoffPlace == freezed
          ? _value.dropoffPlace
          : dropoffPlace // ignore: cast_nullable_to_non_nullable
              as NearbySearch?,
      pickupPlace: pickupPlace == freezed
          ? _value.pickupPlace
          : pickupPlace // ignore: cast_nullable_to_non_nullable
              as NearbySearch?,
      places: places == freezed
          ? _value.places
          : places // ignore: cast_nullable_to_non_nullable
              as List<NearbySearch>,
    ));
  }
}

/// @nodoc

class _$_PickUpState implements _PickUpState {
  const _$_PickUpState(
      {required this.isGeocodingFromMapLoaidng,
      required this.isNearbyPlacesLoading,
      required this.nearbyQuery,
      this.dropoffPlace,
      this.pickupPlace,
      required this.places});

  @override
  final bool isGeocodingFromMapLoaidng;
  @override
  final bool isNearbyPlacesLoading;
  @override
  final String nearbyQuery;
  @override
  final NearbySearch? dropoffPlace;
  @override
  final NearbySearch? pickupPlace;
  @override
  final List<NearbySearch> places;

  @override
  String toString() {
    return 'PickUpState(isGeocodingFromMapLoaidng: $isGeocodingFromMapLoaidng, isNearbyPlacesLoading: $isNearbyPlacesLoading, nearbyQuery: $nearbyQuery, dropoffPlace: $dropoffPlace, pickupPlace: $pickupPlace, places: $places)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PickUpState &&
            const DeepCollectionEquality().equals(
                other.isGeocodingFromMapLoaidng, isGeocodingFromMapLoaidng) &&
            const DeepCollectionEquality()
                .equals(other.isNearbyPlacesLoading, isNearbyPlacesLoading) &&
            const DeepCollectionEquality()
                .equals(other.nearbyQuery, nearbyQuery) &&
            const DeepCollectionEquality()
                .equals(other.dropoffPlace, dropoffPlace) &&
            const DeepCollectionEquality()
                .equals(other.pickupPlace, pickupPlace) &&
            const DeepCollectionEquality().equals(other.places, places));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isGeocodingFromMapLoaidng),
      const DeepCollectionEquality().hash(isNearbyPlacesLoading),
      const DeepCollectionEquality().hash(nearbyQuery),
      const DeepCollectionEquality().hash(dropoffPlace),
      const DeepCollectionEquality().hash(pickupPlace),
      const DeepCollectionEquality().hash(places));

  @JsonKey(ignore: true)
  @override
  _$PickUpStateCopyWith<_PickUpState> get copyWith =>
      __$PickUpStateCopyWithImpl<_PickUpState>(this, _$identity);
}

abstract class _PickUpState implements PickUpState {
  const factory _PickUpState(
      {required bool isGeocodingFromMapLoaidng,
      required bool isNearbyPlacesLoading,
      required String nearbyQuery,
      NearbySearch? dropoffPlace,
      NearbySearch? pickupPlace,
      required List<NearbySearch> places}) = _$_PickUpState;

  @override
  bool get isGeocodingFromMapLoaidng;
  @override
  bool get isNearbyPlacesLoading;
  @override
  String get nearbyQuery;
  @override
  NearbySearch? get dropoffPlace;
  @override
  NearbySearch? get pickupPlace;
  @override
  List<NearbySearch> get places;
  @override
  @JsonKey(ignore: true)
  _$PickUpStateCopyWith<_PickUpState> get copyWith =>
      throw _privateConstructorUsedError;
}

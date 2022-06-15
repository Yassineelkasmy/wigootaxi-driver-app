// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'location_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LocationStateTearOff {
  const _$LocationStateTearOff();

  _LocationState call(
      {required bool isRequesting,
      required Option<Either<LocationFailure, Unit>>
          locationFailureOrSuccessOption,
      Position? position}) {
    return _LocationState(
      isRequesting: isRequesting,
      locationFailureOrSuccessOption: locationFailureOrSuccessOption,
      position: position,
    );
  }
}

/// @nodoc
const $LocationState = _$LocationStateTearOff();

/// @nodoc
mixin _$LocationState {
  bool get isRequesting => throw _privateConstructorUsedError;
  Option<Either<LocationFailure, Unit>> get locationFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  Position? get position => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LocationStateCopyWith<LocationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationStateCopyWith<$Res> {
  factory $LocationStateCopyWith(
          LocationState value, $Res Function(LocationState) then) =
      _$LocationStateCopyWithImpl<$Res>;
  $Res call(
      {bool isRequesting,
      Option<Either<LocationFailure, Unit>> locationFailureOrSuccessOption,
      Position? position});
}

/// @nodoc
class _$LocationStateCopyWithImpl<$Res>
    implements $LocationStateCopyWith<$Res> {
  _$LocationStateCopyWithImpl(this._value, this._then);

  final LocationState _value;
  // ignore: unused_field
  final $Res Function(LocationState) _then;

  @override
  $Res call({
    Object? isRequesting = freezed,
    Object? locationFailureOrSuccessOption = freezed,
    Object? position = freezed,
  }) {
    return _then(_value.copyWith(
      isRequesting: isRequesting == freezed
          ? _value.isRequesting
          : isRequesting // ignore: cast_nullable_to_non_nullable
              as bool,
      locationFailureOrSuccessOption: locationFailureOrSuccessOption == freezed
          ? _value.locationFailureOrSuccessOption
          : locationFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<LocationFailure, Unit>>,
      position: position == freezed
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as Position?,
    ));
  }
}

/// @nodoc
abstract class _$LocationStateCopyWith<$Res>
    implements $LocationStateCopyWith<$Res> {
  factory _$LocationStateCopyWith(
          _LocationState value, $Res Function(_LocationState) then) =
      __$LocationStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isRequesting,
      Option<Either<LocationFailure, Unit>> locationFailureOrSuccessOption,
      Position? position});
}

/// @nodoc
class __$LocationStateCopyWithImpl<$Res>
    extends _$LocationStateCopyWithImpl<$Res>
    implements _$LocationStateCopyWith<$Res> {
  __$LocationStateCopyWithImpl(
      _LocationState _value, $Res Function(_LocationState) _then)
      : super(_value, (v) => _then(v as _LocationState));

  @override
  _LocationState get _value => super._value as _LocationState;

  @override
  $Res call({
    Object? isRequesting = freezed,
    Object? locationFailureOrSuccessOption = freezed,
    Object? position = freezed,
  }) {
    return _then(_LocationState(
      isRequesting: isRequesting == freezed
          ? _value.isRequesting
          : isRequesting // ignore: cast_nullable_to_non_nullable
              as bool,
      locationFailureOrSuccessOption: locationFailureOrSuccessOption == freezed
          ? _value.locationFailureOrSuccessOption
          : locationFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<LocationFailure, Unit>>,
      position: position == freezed
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as Position?,
    ));
  }
}

/// @nodoc

class _$_LocationState implements _LocationState {
  const _$_LocationState(
      {required this.isRequesting,
      required this.locationFailureOrSuccessOption,
      this.position});

  @override
  final bool isRequesting;
  @override
  final Option<Either<LocationFailure, Unit>> locationFailureOrSuccessOption;
  @override
  final Position? position;

  @override
  String toString() {
    return 'LocationState(isRequesting: $isRequesting, locationFailureOrSuccessOption: $locationFailureOrSuccessOption, position: $position)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LocationState &&
            const DeepCollectionEquality()
                .equals(other.isRequesting, isRequesting) &&
            const DeepCollectionEquality().equals(
                other.locationFailureOrSuccessOption,
                locationFailureOrSuccessOption) &&
            const DeepCollectionEquality().equals(other.position, position));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isRequesting),
      const DeepCollectionEquality().hash(locationFailureOrSuccessOption),
      const DeepCollectionEquality().hash(position));

  @JsonKey(ignore: true)
  @override
  _$LocationStateCopyWith<_LocationState> get copyWith =>
      __$LocationStateCopyWithImpl<_LocationState>(this, _$identity);
}

abstract class _LocationState implements LocationState {
  const factory _LocationState(
      {required bool isRequesting,
      required Option<Either<LocationFailure, Unit>>
          locationFailureOrSuccessOption,
      Position? position}) = _$_LocationState;

  @override
  bool get isRequesting;
  @override
  Option<Either<LocationFailure, Unit>> get locationFailureOrSuccessOption;
  @override
  Position? get position;
  @override
  @JsonKey(ignore: true)
  _$LocationStateCopyWith<_LocationState> get copyWith =>
      throw _privateConstructorUsedError;
}

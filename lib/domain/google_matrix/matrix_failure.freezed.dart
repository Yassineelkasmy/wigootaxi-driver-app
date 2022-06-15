// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'matrix_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MatrixFailureTearOff {
  const _$MatrixFailureTearOff();

  _MatrixFailure serverError() {
    return const _MatrixFailure();
  }
}

/// @nodoc
const $MatrixFailure = _$MatrixFailureTearOff();

/// @nodoc
mixin _$MatrixFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? serverError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MatrixFailure value) serverError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_MatrixFailure value)? serverError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MatrixFailure value)? serverError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MatrixFailureCopyWith<$Res> {
  factory $MatrixFailureCopyWith(
          MatrixFailure value, $Res Function(MatrixFailure) then) =
      _$MatrixFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$MatrixFailureCopyWithImpl<$Res>
    implements $MatrixFailureCopyWith<$Res> {
  _$MatrixFailureCopyWithImpl(this._value, this._then);

  final MatrixFailure _value;
  // ignore: unused_field
  final $Res Function(MatrixFailure) _then;
}

/// @nodoc
abstract class _$MatrixFailureCopyWith<$Res> {
  factory _$MatrixFailureCopyWith(
          _MatrixFailure value, $Res Function(_MatrixFailure) then) =
      __$MatrixFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$MatrixFailureCopyWithImpl<$Res>
    extends _$MatrixFailureCopyWithImpl<$Res>
    implements _$MatrixFailureCopyWith<$Res> {
  __$MatrixFailureCopyWithImpl(
      _MatrixFailure _value, $Res Function(_MatrixFailure) _then)
      : super(_value, (v) => _then(v as _MatrixFailure));

  @override
  _MatrixFailure get _value => super._value as _MatrixFailure;
}

/// @nodoc

class _$_MatrixFailure implements _MatrixFailure {
  const _$_MatrixFailure();

  @override
  String toString() {
    return 'MatrixFailure.serverError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _MatrixFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
  }) {
    return serverError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? serverError,
  }) {
    return serverError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MatrixFailure value) serverError,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_MatrixFailure value)? serverError,
  }) {
    return serverError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MatrixFailure value)? serverError,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class _MatrixFailure implements MatrixFailure {
  const factory _MatrixFailure() = _$_MatrixFailure;
}

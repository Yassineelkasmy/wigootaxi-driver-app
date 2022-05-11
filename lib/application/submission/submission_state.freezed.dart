// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'submission_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SubmissionStateTearOff {
  const _$SubmissionStateTearOff();

  _SubmissionState call(
      {required bool isSubmitting,
      required String type,
      required Map<String, dynamic> docs,
      required Option<Either<SubmissionFailure, Unit>> failureOrSuccessOption,
      Submission? submission}) {
    return _SubmissionState(
      isSubmitting: isSubmitting,
      type: type,
      docs: docs,
      failureOrSuccessOption: failureOrSuccessOption,
      submission: submission,
    );
  }
}

/// @nodoc
const $SubmissionState = _$SubmissionStateTearOff();

/// @nodoc
mixin _$SubmissionState {
  bool get isSubmitting => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  Map<String, dynamic> get docs => throw _privateConstructorUsedError;
  Option<Either<SubmissionFailure, Unit>> get failureOrSuccessOption =>
      throw _privateConstructorUsedError;
  Submission? get submission => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SubmissionStateCopyWith<SubmissionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubmissionStateCopyWith<$Res> {
  factory $SubmissionStateCopyWith(
          SubmissionState value, $Res Function(SubmissionState) then) =
      _$SubmissionStateCopyWithImpl<$Res>;
  $Res call(
      {bool isSubmitting,
      String type,
      Map<String, dynamic> docs,
      Option<Either<SubmissionFailure, Unit>> failureOrSuccessOption,
      Submission? submission});

  $SubmissionCopyWith<$Res>? get submission;
}

/// @nodoc
class _$SubmissionStateCopyWithImpl<$Res>
    implements $SubmissionStateCopyWith<$Res> {
  _$SubmissionStateCopyWithImpl(this._value, this._then);

  final SubmissionState _value;
  // ignore: unused_field
  final $Res Function(SubmissionState) _then;

  @override
  $Res call({
    Object? isSubmitting = freezed,
    Object? type = freezed,
    Object? docs = freezed,
    Object? failureOrSuccessOption = freezed,
    Object? submission = freezed,
  }) {
    return _then(_value.copyWith(
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      docs: docs == freezed
          ? _value.docs
          : docs // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      failureOrSuccessOption: failureOrSuccessOption == freezed
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<SubmissionFailure, Unit>>,
      submission: submission == freezed
          ? _value.submission
          : submission // ignore: cast_nullable_to_non_nullable
              as Submission?,
    ));
  }

  @override
  $SubmissionCopyWith<$Res>? get submission {
    if (_value.submission == null) {
      return null;
    }

    return $SubmissionCopyWith<$Res>(_value.submission!, (value) {
      return _then(_value.copyWith(submission: value));
    });
  }
}

/// @nodoc
abstract class _$SubmissionStateCopyWith<$Res>
    implements $SubmissionStateCopyWith<$Res> {
  factory _$SubmissionStateCopyWith(
          _SubmissionState value, $Res Function(_SubmissionState) then) =
      __$SubmissionStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isSubmitting,
      String type,
      Map<String, dynamic> docs,
      Option<Either<SubmissionFailure, Unit>> failureOrSuccessOption,
      Submission? submission});

  @override
  $SubmissionCopyWith<$Res>? get submission;
}

/// @nodoc
class __$SubmissionStateCopyWithImpl<$Res>
    extends _$SubmissionStateCopyWithImpl<$Res>
    implements _$SubmissionStateCopyWith<$Res> {
  __$SubmissionStateCopyWithImpl(
      _SubmissionState _value, $Res Function(_SubmissionState) _then)
      : super(_value, (v) => _then(v as _SubmissionState));

  @override
  _SubmissionState get _value => super._value as _SubmissionState;

  @override
  $Res call({
    Object? isSubmitting = freezed,
    Object? type = freezed,
    Object? docs = freezed,
    Object? failureOrSuccessOption = freezed,
    Object? submission = freezed,
  }) {
    return _then(_SubmissionState(
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      docs: docs == freezed
          ? _value.docs
          : docs // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      failureOrSuccessOption: failureOrSuccessOption == freezed
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<SubmissionFailure, Unit>>,
      submission: submission == freezed
          ? _value.submission
          : submission // ignore: cast_nullable_to_non_nullable
              as Submission?,
    ));
  }
}

/// @nodoc

class _$_SubmissionState implements _SubmissionState {
  const _$_SubmissionState(
      {required this.isSubmitting,
      required this.type,
      required this.docs,
      required this.failureOrSuccessOption,
      this.submission});

  @override
  final bool isSubmitting;
  @override
  final String type;
  @override
  final Map<String, dynamic> docs;
  @override
  final Option<Either<SubmissionFailure, Unit>> failureOrSuccessOption;
  @override
  final Submission? submission;

  @override
  String toString() {
    return 'SubmissionState(isSubmitting: $isSubmitting, type: $type, docs: $docs, failureOrSuccessOption: $failureOrSuccessOption, submission: $submission)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SubmissionState &&
            const DeepCollectionEquality()
                .equals(other.isSubmitting, isSubmitting) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.docs, docs) &&
            const DeepCollectionEquality()
                .equals(other.failureOrSuccessOption, failureOrSuccessOption) &&
            const DeepCollectionEquality()
                .equals(other.submission, submission));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isSubmitting),
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(docs),
      const DeepCollectionEquality().hash(failureOrSuccessOption),
      const DeepCollectionEquality().hash(submission));

  @JsonKey(ignore: true)
  @override
  _$SubmissionStateCopyWith<_SubmissionState> get copyWith =>
      __$SubmissionStateCopyWithImpl<_SubmissionState>(this, _$identity);
}

abstract class _SubmissionState implements SubmissionState {
  const factory _SubmissionState(
      {required bool isSubmitting,
      required String type,
      required Map<String, dynamic> docs,
      required Option<Either<SubmissionFailure, Unit>> failureOrSuccessOption,
      Submission? submission}) = _$_SubmissionState;

  @override
  bool get isSubmitting;
  @override
  String get type;
  @override
  Map<String, dynamic> get docs;
  @override
  Option<Either<SubmissionFailure, Unit>> get failureOrSuccessOption;
  @override
  Submission? get submission;
  @override
  @JsonKey(ignore: true)
  _$SubmissionStateCopyWith<_SubmissionState> get copyWith =>
      throw _privateConstructorUsedError;
}

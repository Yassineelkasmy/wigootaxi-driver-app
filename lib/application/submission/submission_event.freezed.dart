// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'submission_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SubmissionEventTearOff {
  const _$SubmissionEventTearOff();

  DocumentSubmitted documentSubmitted(String url) {
    return DocumentSubmitted(
      url,
    );
  }

  FormSubmitted formSubmitted() {
    return const FormSubmitted();
  }

  CreateUserSubmissionRequested createUserSubmissionRequested(String userId) {
    return CreateUserSubmissionRequested(
      userId,
    );
  }
}

/// @nodoc
const $SubmissionEvent = _$SubmissionEventTearOff();

/// @nodoc
mixin _$SubmissionEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String url) documentSubmitted,
    required TResult Function() formSubmitted,
    required TResult Function(String userId) createUserSubmissionRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String url)? documentSubmitted,
    TResult Function()? formSubmitted,
    TResult Function(String userId)? createUserSubmissionRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String url)? documentSubmitted,
    TResult Function()? formSubmitted,
    TResult Function(String userId)? createUserSubmissionRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DocumentSubmitted value) documentSubmitted,
    required TResult Function(FormSubmitted value) formSubmitted,
    required TResult Function(CreateUserSubmissionRequested value)
        createUserSubmissionRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DocumentSubmitted value)? documentSubmitted,
    TResult Function(FormSubmitted value)? formSubmitted,
    TResult Function(CreateUserSubmissionRequested value)?
        createUserSubmissionRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DocumentSubmitted value)? documentSubmitted,
    TResult Function(FormSubmitted value)? formSubmitted,
    TResult Function(CreateUserSubmissionRequested value)?
        createUserSubmissionRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubmissionEventCopyWith<$Res> {
  factory $SubmissionEventCopyWith(
          SubmissionEvent value, $Res Function(SubmissionEvent) then) =
      _$SubmissionEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SubmissionEventCopyWithImpl<$Res>
    implements $SubmissionEventCopyWith<$Res> {
  _$SubmissionEventCopyWithImpl(this._value, this._then);

  final SubmissionEvent _value;
  // ignore: unused_field
  final $Res Function(SubmissionEvent) _then;
}

/// @nodoc
abstract class $DocumentSubmittedCopyWith<$Res> {
  factory $DocumentSubmittedCopyWith(
          DocumentSubmitted value, $Res Function(DocumentSubmitted) then) =
      _$DocumentSubmittedCopyWithImpl<$Res>;
  $Res call({String url});
}

/// @nodoc
class _$DocumentSubmittedCopyWithImpl<$Res>
    extends _$SubmissionEventCopyWithImpl<$Res>
    implements $DocumentSubmittedCopyWith<$Res> {
  _$DocumentSubmittedCopyWithImpl(
      DocumentSubmitted _value, $Res Function(DocumentSubmitted) _then)
      : super(_value, (v) => _then(v as DocumentSubmitted));

  @override
  DocumentSubmitted get _value => super._value as DocumentSubmitted;

  @override
  $Res call({
    Object? url = freezed,
  }) {
    return _then(DocumentSubmitted(
      url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DocumentSubmitted implements DocumentSubmitted {
  const _$DocumentSubmitted(this.url);

  @override
  final String url;

  @override
  String toString() {
    return 'SubmissionEvent.documentSubmitted(url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DocumentSubmitted &&
            const DeepCollectionEquality().equals(other.url, url));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(url));

  @JsonKey(ignore: true)
  @override
  $DocumentSubmittedCopyWith<DocumentSubmitted> get copyWith =>
      _$DocumentSubmittedCopyWithImpl<DocumentSubmitted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String url) documentSubmitted,
    required TResult Function() formSubmitted,
    required TResult Function(String userId) createUserSubmissionRequested,
  }) {
    return documentSubmitted(url);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String url)? documentSubmitted,
    TResult Function()? formSubmitted,
    TResult Function(String userId)? createUserSubmissionRequested,
  }) {
    return documentSubmitted?.call(url);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String url)? documentSubmitted,
    TResult Function()? formSubmitted,
    TResult Function(String userId)? createUserSubmissionRequested,
    required TResult orElse(),
  }) {
    if (documentSubmitted != null) {
      return documentSubmitted(url);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DocumentSubmitted value) documentSubmitted,
    required TResult Function(FormSubmitted value) formSubmitted,
    required TResult Function(CreateUserSubmissionRequested value)
        createUserSubmissionRequested,
  }) {
    return documentSubmitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DocumentSubmitted value)? documentSubmitted,
    TResult Function(FormSubmitted value)? formSubmitted,
    TResult Function(CreateUserSubmissionRequested value)?
        createUserSubmissionRequested,
  }) {
    return documentSubmitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DocumentSubmitted value)? documentSubmitted,
    TResult Function(FormSubmitted value)? formSubmitted,
    TResult Function(CreateUserSubmissionRequested value)?
        createUserSubmissionRequested,
    required TResult orElse(),
  }) {
    if (documentSubmitted != null) {
      return documentSubmitted(this);
    }
    return orElse();
  }
}

abstract class DocumentSubmitted implements SubmissionEvent {
  const factory DocumentSubmitted(String url) = _$DocumentSubmitted;

  String get url;
  @JsonKey(ignore: true)
  $DocumentSubmittedCopyWith<DocumentSubmitted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FormSubmittedCopyWith<$Res> {
  factory $FormSubmittedCopyWith(
          FormSubmitted value, $Res Function(FormSubmitted) then) =
      _$FormSubmittedCopyWithImpl<$Res>;
}

/// @nodoc
class _$FormSubmittedCopyWithImpl<$Res>
    extends _$SubmissionEventCopyWithImpl<$Res>
    implements $FormSubmittedCopyWith<$Res> {
  _$FormSubmittedCopyWithImpl(
      FormSubmitted _value, $Res Function(FormSubmitted) _then)
      : super(_value, (v) => _then(v as FormSubmitted));

  @override
  FormSubmitted get _value => super._value as FormSubmitted;
}

/// @nodoc

class _$FormSubmitted implements FormSubmitted {
  const _$FormSubmitted();

  @override
  String toString() {
    return 'SubmissionEvent.formSubmitted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is FormSubmitted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String url) documentSubmitted,
    required TResult Function() formSubmitted,
    required TResult Function(String userId) createUserSubmissionRequested,
  }) {
    return formSubmitted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String url)? documentSubmitted,
    TResult Function()? formSubmitted,
    TResult Function(String userId)? createUserSubmissionRequested,
  }) {
    return formSubmitted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String url)? documentSubmitted,
    TResult Function()? formSubmitted,
    TResult Function(String userId)? createUserSubmissionRequested,
    required TResult orElse(),
  }) {
    if (formSubmitted != null) {
      return formSubmitted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DocumentSubmitted value) documentSubmitted,
    required TResult Function(FormSubmitted value) formSubmitted,
    required TResult Function(CreateUserSubmissionRequested value)
        createUserSubmissionRequested,
  }) {
    return formSubmitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DocumentSubmitted value)? documentSubmitted,
    TResult Function(FormSubmitted value)? formSubmitted,
    TResult Function(CreateUserSubmissionRequested value)?
        createUserSubmissionRequested,
  }) {
    return formSubmitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DocumentSubmitted value)? documentSubmitted,
    TResult Function(FormSubmitted value)? formSubmitted,
    TResult Function(CreateUserSubmissionRequested value)?
        createUserSubmissionRequested,
    required TResult orElse(),
  }) {
    if (formSubmitted != null) {
      return formSubmitted(this);
    }
    return orElse();
  }
}

abstract class FormSubmitted implements SubmissionEvent {
  const factory FormSubmitted() = _$FormSubmitted;
}

/// @nodoc
abstract class $CreateUserSubmissionRequestedCopyWith<$Res> {
  factory $CreateUserSubmissionRequestedCopyWith(
          CreateUserSubmissionRequested value,
          $Res Function(CreateUserSubmissionRequested) then) =
      _$CreateUserSubmissionRequestedCopyWithImpl<$Res>;
  $Res call({String userId});
}

/// @nodoc
class _$CreateUserSubmissionRequestedCopyWithImpl<$Res>
    extends _$SubmissionEventCopyWithImpl<$Res>
    implements $CreateUserSubmissionRequestedCopyWith<$Res> {
  _$CreateUserSubmissionRequestedCopyWithImpl(
      CreateUserSubmissionRequested _value,
      $Res Function(CreateUserSubmissionRequested) _then)
      : super(_value, (v) => _then(v as CreateUserSubmissionRequested));

  @override
  CreateUserSubmissionRequested get _value =>
      super._value as CreateUserSubmissionRequested;

  @override
  $Res call({
    Object? userId = freezed,
  }) {
    return _then(CreateUserSubmissionRequested(
      userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CreateUserSubmissionRequested implements CreateUserSubmissionRequested {
  const _$CreateUserSubmissionRequested(this.userId);

  @override
  final String userId;

  @override
  String toString() {
    return 'SubmissionEvent.createUserSubmissionRequested(userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CreateUserSubmissionRequested &&
            const DeepCollectionEquality().equals(other.userId, userId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(userId));

  @JsonKey(ignore: true)
  @override
  $CreateUserSubmissionRequestedCopyWith<CreateUserSubmissionRequested>
      get copyWith => _$CreateUserSubmissionRequestedCopyWithImpl<
          CreateUserSubmissionRequested>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String url) documentSubmitted,
    required TResult Function() formSubmitted,
    required TResult Function(String userId) createUserSubmissionRequested,
  }) {
    return createUserSubmissionRequested(userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String url)? documentSubmitted,
    TResult Function()? formSubmitted,
    TResult Function(String userId)? createUserSubmissionRequested,
  }) {
    return createUserSubmissionRequested?.call(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String url)? documentSubmitted,
    TResult Function()? formSubmitted,
    TResult Function(String userId)? createUserSubmissionRequested,
    required TResult orElse(),
  }) {
    if (createUserSubmissionRequested != null) {
      return createUserSubmissionRequested(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DocumentSubmitted value) documentSubmitted,
    required TResult Function(FormSubmitted value) formSubmitted,
    required TResult Function(CreateUserSubmissionRequested value)
        createUserSubmissionRequested,
  }) {
    return createUserSubmissionRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DocumentSubmitted value)? documentSubmitted,
    TResult Function(FormSubmitted value)? formSubmitted,
    TResult Function(CreateUserSubmissionRequested value)?
        createUserSubmissionRequested,
  }) {
    return createUserSubmissionRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DocumentSubmitted value)? documentSubmitted,
    TResult Function(FormSubmitted value)? formSubmitted,
    TResult Function(CreateUserSubmissionRequested value)?
        createUserSubmissionRequested,
    required TResult orElse(),
  }) {
    if (createUserSubmissionRequested != null) {
      return createUserSubmissionRequested(this);
    }
    return orElse();
  }
}

abstract class CreateUserSubmissionRequested implements SubmissionEvent {
  const factory CreateUserSubmissionRequested(String userId) =
      _$CreateUserSubmissionRequested;

  String get userId;
  @JsonKey(ignore: true)
  $CreateUserSubmissionRequestedCopyWith<CreateUserSubmissionRequested>
      get copyWith => throw _privateConstructorUsedError;
}

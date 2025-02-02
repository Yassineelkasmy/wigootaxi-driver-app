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

  DocumentSubmitted documentSubmitted(String url, String name, String userid) {
    return DocumentSubmitted(
      url,
      name,
      userid,
    );
  }

  DocumentRemoved documentRemoved(String name) {
    return DocumentRemoved(
      name,
    );
  }

  FormSubmitted formSubmitted(User user) {
    return FormSubmitted(
      user,
    );
  }

  CheckFormSubmissionRequested checkFormSubmissionRequested(String userid) {
    return CheckFormSubmissionRequested(
      userid,
    );
  }

  TypeChosen typeChosen(String type) {
    return TypeChosen(
      type,
    );
  }
}

/// @nodoc
const $SubmissionEvent = _$SubmissionEventTearOff();

/// @nodoc
mixin _$SubmissionEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String url, String name, String userid)
        documentSubmitted,
    required TResult Function(String name) documentRemoved,
    required TResult Function(User user) formSubmitted,
    required TResult Function(String userid) checkFormSubmissionRequested,
    required TResult Function(String type) typeChosen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String url, String name, String userid)? documentSubmitted,
    TResult Function(String name)? documentRemoved,
    TResult Function(User user)? formSubmitted,
    TResult Function(String userid)? checkFormSubmissionRequested,
    TResult Function(String type)? typeChosen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String url, String name, String userid)? documentSubmitted,
    TResult Function(String name)? documentRemoved,
    TResult Function(User user)? formSubmitted,
    TResult Function(String userid)? checkFormSubmissionRequested,
    TResult Function(String type)? typeChosen,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DocumentSubmitted value) documentSubmitted,
    required TResult Function(DocumentRemoved value) documentRemoved,
    required TResult Function(FormSubmitted value) formSubmitted,
    required TResult Function(CheckFormSubmissionRequested value)
        checkFormSubmissionRequested,
    required TResult Function(TypeChosen value) typeChosen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DocumentSubmitted value)? documentSubmitted,
    TResult Function(DocumentRemoved value)? documentRemoved,
    TResult Function(FormSubmitted value)? formSubmitted,
    TResult Function(CheckFormSubmissionRequested value)?
        checkFormSubmissionRequested,
    TResult Function(TypeChosen value)? typeChosen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DocumentSubmitted value)? documentSubmitted,
    TResult Function(DocumentRemoved value)? documentRemoved,
    TResult Function(FormSubmitted value)? formSubmitted,
    TResult Function(CheckFormSubmissionRequested value)?
        checkFormSubmissionRequested,
    TResult Function(TypeChosen value)? typeChosen,
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
  $Res call({String url, String name, String userid});
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
    Object? name = freezed,
    Object? userid = freezed,
  }) {
    return _then(DocumentSubmitted(
      url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      userid == freezed
          ? _value.userid
          : userid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DocumentSubmitted implements DocumentSubmitted {
  const _$DocumentSubmitted(this.url, this.name, this.userid);

  @override
  final String url;
  @override
  final String name;
  @override
  final String userid;

  @override
  String toString() {
    return 'SubmissionEvent.documentSubmitted(url: $url, name: $name, userid: $userid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DocumentSubmitted &&
            const DeepCollectionEquality().equals(other.url, url) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.userid, userid));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(url),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(userid));

  @JsonKey(ignore: true)
  @override
  $DocumentSubmittedCopyWith<DocumentSubmitted> get copyWith =>
      _$DocumentSubmittedCopyWithImpl<DocumentSubmitted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String url, String name, String userid)
        documentSubmitted,
    required TResult Function(String name) documentRemoved,
    required TResult Function(User user) formSubmitted,
    required TResult Function(String userid) checkFormSubmissionRequested,
    required TResult Function(String type) typeChosen,
  }) {
    return documentSubmitted(url, name, userid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String url, String name, String userid)? documentSubmitted,
    TResult Function(String name)? documentRemoved,
    TResult Function(User user)? formSubmitted,
    TResult Function(String userid)? checkFormSubmissionRequested,
    TResult Function(String type)? typeChosen,
  }) {
    return documentSubmitted?.call(url, name, userid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String url, String name, String userid)? documentSubmitted,
    TResult Function(String name)? documentRemoved,
    TResult Function(User user)? formSubmitted,
    TResult Function(String userid)? checkFormSubmissionRequested,
    TResult Function(String type)? typeChosen,
    required TResult orElse(),
  }) {
    if (documentSubmitted != null) {
      return documentSubmitted(url, name, userid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DocumentSubmitted value) documentSubmitted,
    required TResult Function(DocumentRemoved value) documentRemoved,
    required TResult Function(FormSubmitted value) formSubmitted,
    required TResult Function(CheckFormSubmissionRequested value)
        checkFormSubmissionRequested,
    required TResult Function(TypeChosen value) typeChosen,
  }) {
    return documentSubmitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DocumentSubmitted value)? documentSubmitted,
    TResult Function(DocumentRemoved value)? documentRemoved,
    TResult Function(FormSubmitted value)? formSubmitted,
    TResult Function(CheckFormSubmissionRequested value)?
        checkFormSubmissionRequested,
    TResult Function(TypeChosen value)? typeChosen,
  }) {
    return documentSubmitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DocumentSubmitted value)? documentSubmitted,
    TResult Function(DocumentRemoved value)? documentRemoved,
    TResult Function(FormSubmitted value)? formSubmitted,
    TResult Function(CheckFormSubmissionRequested value)?
        checkFormSubmissionRequested,
    TResult Function(TypeChosen value)? typeChosen,
    required TResult orElse(),
  }) {
    if (documentSubmitted != null) {
      return documentSubmitted(this);
    }
    return orElse();
  }
}

abstract class DocumentSubmitted implements SubmissionEvent {
  const factory DocumentSubmitted(String url, String name, String userid) =
      _$DocumentSubmitted;

  String get url;
  String get name;
  String get userid;
  @JsonKey(ignore: true)
  $DocumentSubmittedCopyWith<DocumentSubmitted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DocumentRemovedCopyWith<$Res> {
  factory $DocumentRemovedCopyWith(
          DocumentRemoved value, $Res Function(DocumentRemoved) then) =
      _$DocumentRemovedCopyWithImpl<$Res>;
  $Res call({String name});
}

/// @nodoc
class _$DocumentRemovedCopyWithImpl<$Res>
    extends _$SubmissionEventCopyWithImpl<$Res>
    implements $DocumentRemovedCopyWith<$Res> {
  _$DocumentRemovedCopyWithImpl(
      DocumentRemoved _value, $Res Function(DocumentRemoved) _then)
      : super(_value, (v) => _then(v as DocumentRemoved));

  @override
  DocumentRemoved get _value => super._value as DocumentRemoved;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(DocumentRemoved(
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DocumentRemoved implements DocumentRemoved {
  const _$DocumentRemoved(this.name);

  @override
  final String name;

  @override
  String toString() {
    return 'SubmissionEvent.documentRemoved(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DocumentRemoved &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  $DocumentRemovedCopyWith<DocumentRemoved> get copyWith =>
      _$DocumentRemovedCopyWithImpl<DocumentRemoved>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String url, String name, String userid)
        documentSubmitted,
    required TResult Function(String name) documentRemoved,
    required TResult Function(User user) formSubmitted,
    required TResult Function(String userid) checkFormSubmissionRequested,
    required TResult Function(String type) typeChosen,
  }) {
    return documentRemoved(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String url, String name, String userid)? documentSubmitted,
    TResult Function(String name)? documentRemoved,
    TResult Function(User user)? formSubmitted,
    TResult Function(String userid)? checkFormSubmissionRequested,
    TResult Function(String type)? typeChosen,
  }) {
    return documentRemoved?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String url, String name, String userid)? documentSubmitted,
    TResult Function(String name)? documentRemoved,
    TResult Function(User user)? formSubmitted,
    TResult Function(String userid)? checkFormSubmissionRequested,
    TResult Function(String type)? typeChosen,
    required TResult orElse(),
  }) {
    if (documentRemoved != null) {
      return documentRemoved(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DocumentSubmitted value) documentSubmitted,
    required TResult Function(DocumentRemoved value) documentRemoved,
    required TResult Function(FormSubmitted value) formSubmitted,
    required TResult Function(CheckFormSubmissionRequested value)
        checkFormSubmissionRequested,
    required TResult Function(TypeChosen value) typeChosen,
  }) {
    return documentRemoved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DocumentSubmitted value)? documentSubmitted,
    TResult Function(DocumentRemoved value)? documentRemoved,
    TResult Function(FormSubmitted value)? formSubmitted,
    TResult Function(CheckFormSubmissionRequested value)?
        checkFormSubmissionRequested,
    TResult Function(TypeChosen value)? typeChosen,
  }) {
    return documentRemoved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DocumentSubmitted value)? documentSubmitted,
    TResult Function(DocumentRemoved value)? documentRemoved,
    TResult Function(FormSubmitted value)? formSubmitted,
    TResult Function(CheckFormSubmissionRequested value)?
        checkFormSubmissionRequested,
    TResult Function(TypeChosen value)? typeChosen,
    required TResult orElse(),
  }) {
    if (documentRemoved != null) {
      return documentRemoved(this);
    }
    return orElse();
  }
}

abstract class DocumentRemoved implements SubmissionEvent {
  const factory DocumentRemoved(String name) = _$DocumentRemoved;

  String get name;
  @JsonKey(ignore: true)
  $DocumentRemovedCopyWith<DocumentRemoved> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FormSubmittedCopyWith<$Res> {
  factory $FormSubmittedCopyWith(
          FormSubmitted value, $Res Function(FormSubmitted) then) =
      _$FormSubmittedCopyWithImpl<$Res>;
  $Res call({User user});

  $UserCopyWith<$Res> get user;
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

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(FormSubmitted(
      user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  @override
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$FormSubmitted implements FormSubmitted {
  const _$FormSubmitted(this.user);

  @override
  final User user;

  @override
  String toString() {
    return 'SubmissionEvent.formSubmitted(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FormSubmitted &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  $FormSubmittedCopyWith<FormSubmitted> get copyWith =>
      _$FormSubmittedCopyWithImpl<FormSubmitted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String url, String name, String userid)
        documentSubmitted,
    required TResult Function(String name) documentRemoved,
    required TResult Function(User user) formSubmitted,
    required TResult Function(String userid) checkFormSubmissionRequested,
    required TResult Function(String type) typeChosen,
  }) {
    return formSubmitted(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String url, String name, String userid)? documentSubmitted,
    TResult Function(String name)? documentRemoved,
    TResult Function(User user)? formSubmitted,
    TResult Function(String userid)? checkFormSubmissionRequested,
    TResult Function(String type)? typeChosen,
  }) {
    return formSubmitted?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String url, String name, String userid)? documentSubmitted,
    TResult Function(String name)? documentRemoved,
    TResult Function(User user)? formSubmitted,
    TResult Function(String userid)? checkFormSubmissionRequested,
    TResult Function(String type)? typeChosen,
    required TResult orElse(),
  }) {
    if (formSubmitted != null) {
      return formSubmitted(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DocumentSubmitted value) documentSubmitted,
    required TResult Function(DocumentRemoved value) documentRemoved,
    required TResult Function(FormSubmitted value) formSubmitted,
    required TResult Function(CheckFormSubmissionRequested value)
        checkFormSubmissionRequested,
    required TResult Function(TypeChosen value) typeChosen,
  }) {
    return formSubmitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DocumentSubmitted value)? documentSubmitted,
    TResult Function(DocumentRemoved value)? documentRemoved,
    TResult Function(FormSubmitted value)? formSubmitted,
    TResult Function(CheckFormSubmissionRequested value)?
        checkFormSubmissionRequested,
    TResult Function(TypeChosen value)? typeChosen,
  }) {
    return formSubmitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DocumentSubmitted value)? documentSubmitted,
    TResult Function(DocumentRemoved value)? documentRemoved,
    TResult Function(FormSubmitted value)? formSubmitted,
    TResult Function(CheckFormSubmissionRequested value)?
        checkFormSubmissionRequested,
    TResult Function(TypeChosen value)? typeChosen,
    required TResult orElse(),
  }) {
    if (formSubmitted != null) {
      return formSubmitted(this);
    }
    return orElse();
  }
}

abstract class FormSubmitted implements SubmissionEvent {
  const factory FormSubmitted(User user) = _$FormSubmitted;

  User get user;
  @JsonKey(ignore: true)
  $FormSubmittedCopyWith<FormSubmitted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckFormSubmissionRequestedCopyWith<$Res> {
  factory $CheckFormSubmissionRequestedCopyWith(
          CheckFormSubmissionRequested value,
          $Res Function(CheckFormSubmissionRequested) then) =
      _$CheckFormSubmissionRequestedCopyWithImpl<$Res>;
  $Res call({String userid});
}

/// @nodoc
class _$CheckFormSubmissionRequestedCopyWithImpl<$Res>
    extends _$SubmissionEventCopyWithImpl<$Res>
    implements $CheckFormSubmissionRequestedCopyWith<$Res> {
  _$CheckFormSubmissionRequestedCopyWithImpl(
      CheckFormSubmissionRequested _value,
      $Res Function(CheckFormSubmissionRequested) _then)
      : super(_value, (v) => _then(v as CheckFormSubmissionRequested));

  @override
  CheckFormSubmissionRequested get _value =>
      super._value as CheckFormSubmissionRequested;

  @override
  $Res call({
    Object? userid = freezed,
  }) {
    return _then(CheckFormSubmissionRequested(
      userid == freezed
          ? _value.userid
          : userid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CheckFormSubmissionRequested implements CheckFormSubmissionRequested {
  const _$CheckFormSubmissionRequested(this.userid);

  @override
  final String userid;

  @override
  String toString() {
    return 'SubmissionEvent.checkFormSubmissionRequested(userid: $userid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CheckFormSubmissionRequested &&
            const DeepCollectionEquality().equals(other.userid, userid));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(userid));

  @JsonKey(ignore: true)
  @override
  $CheckFormSubmissionRequestedCopyWith<CheckFormSubmissionRequested>
      get copyWith => _$CheckFormSubmissionRequestedCopyWithImpl<
          CheckFormSubmissionRequested>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String url, String name, String userid)
        documentSubmitted,
    required TResult Function(String name) documentRemoved,
    required TResult Function(User user) formSubmitted,
    required TResult Function(String userid) checkFormSubmissionRequested,
    required TResult Function(String type) typeChosen,
  }) {
    return checkFormSubmissionRequested(userid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String url, String name, String userid)? documentSubmitted,
    TResult Function(String name)? documentRemoved,
    TResult Function(User user)? formSubmitted,
    TResult Function(String userid)? checkFormSubmissionRequested,
    TResult Function(String type)? typeChosen,
  }) {
    return checkFormSubmissionRequested?.call(userid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String url, String name, String userid)? documentSubmitted,
    TResult Function(String name)? documentRemoved,
    TResult Function(User user)? formSubmitted,
    TResult Function(String userid)? checkFormSubmissionRequested,
    TResult Function(String type)? typeChosen,
    required TResult orElse(),
  }) {
    if (checkFormSubmissionRequested != null) {
      return checkFormSubmissionRequested(userid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DocumentSubmitted value) documentSubmitted,
    required TResult Function(DocumentRemoved value) documentRemoved,
    required TResult Function(FormSubmitted value) formSubmitted,
    required TResult Function(CheckFormSubmissionRequested value)
        checkFormSubmissionRequested,
    required TResult Function(TypeChosen value) typeChosen,
  }) {
    return checkFormSubmissionRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DocumentSubmitted value)? documentSubmitted,
    TResult Function(DocumentRemoved value)? documentRemoved,
    TResult Function(FormSubmitted value)? formSubmitted,
    TResult Function(CheckFormSubmissionRequested value)?
        checkFormSubmissionRequested,
    TResult Function(TypeChosen value)? typeChosen,
  }) {
    return checkFormSubmissionRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DocumentSubmitted value)? documentSubmitted,
    TResult Function(DocumentRemoved value)? documentRemoved,
    TResult Function(FormSubmitted value)? formSubmitted,
    TResult Function(CheckFormSubmissionRequested value)?
        checkFormSubmissionRequested,
    TResult Function(TypeChosen value)? typeChosen,
    required TResult orElse(),
  }) {
    if (checkFormSubmissionRequested != null) {
      return checkFormSubmissionRequested(this);
    }
    return orElse();
  }
}

abstract class CheckFormSubmissionRequested implements SubmissionEvent {
  const factory CheckFormSubmissionRequested(String userid) =
      _$CheckFormSubmissionRequested;

  String get userid;
  @JsonKey(ignore: true)
  $CheckFormSubmissionRequestedCopyWith<CheckFormSubmissionRequested>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TypeChosenCopyWith<$Res> {
  factory $TypeChosenCopyWith(
          TypeChosen value, $Res Function(TypeChosen) then) =
      _$TypeChosenCopyWithImpl<$Res>;
  $Res call({String type});
}

/// @nodoc
class _$TypeChosenCopyWithImpl<$Res> extends _$SubmissionEventCopyWithImpl<$Res>
    implements $TypeChosenCopyWith<$Res> {
  _$TypeChosenCopyWithImpl(TypeChosen _value, $Res Function(TypeChosen) _then)
      : super(_value, (v) => _then(v as TypeChosen));

  @override
  TypeChosen get _value => super._value as TypeChosen;

  @override
  $Res call({
    Object? type = freezed,
  }) {
    return _then(TypeChosen(
      type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TypeChosen implements TypeChosen {
  const _$TypeChosen(this.type);

  @override
  final String type;

  @override
  String toString() {
    return 'SubmissionEvent.typeChosen(type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TypeChosen &&
            const DeepCollectionEquality().equals(other.type, type));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(type));

  @JsonKey(ignore: true)
  @override
  $TypeChosenCopyWith<TypeChosen> get copyWith =>
      _$TypeChosenCopyWithImpl<TypeChosen>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String url, String name, String userid)
        documentSubmitted,
    required TResult Function(String name) documentRemoved,
    required TResult Function(User user) formSubmitted,
    required TResult Function(String userid) checkFormSubmissionRequested,
    required TResult Function(String type) typeChosen,
  }) {
    return typeChosen(type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String url, String name, String userid)? documentSubmitted,
    TResult Function(String name)? documentRemoved,
    TResult Function(User user)? formSubmitted,
    TResult Function(String userid)? checkFormSubmissionRequested,
    TResult Function(String type)? typeChosen,
  }) {
    return typeChosen?.call(type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String url, String name, String userid)? documentSubmitted,
    TResult Function(String name)? documentRemoved,
    TResult Function(User user)? formSubmitted,
    TResult Function(String userid)? checkFormSubmissionRequested,
    TResult Function(String type)? typeChosen,
    required TResult orElse(),
  }) {
    if (typeChosen != null) {
      return typeChosen(type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DocumentSubmitted value) documentSubmitted,
    required TResult Function(DocumentRemoved value) documentRemoved,
    required TResult Function(FormSubmitted value) formSubmitted,
    required TResult Function(CheckFormSubmissionRequested value)
        checkFormSubmissionRequested,
    required TResult Function(TypeChosen value) typeChosen,
  }) {
    return typeChosen(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DocumentSubmitted value)? documentSubmitted,
    TResult Function(DocumentRemoved value)? documentRemoved,
    TResult Function(FormSubmitted value)? formSubmitted,
    TResult Function(CheckFormSubmissionRequested value)?
        checkFormSubmissionRequested,
    TResult Function(TypeChosen value)? typeChosen,
  }) {
    return typeChosen?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DocumentSubmitted value)? documentSubmitted,
    TResult Function(DocumentRemoved value)? documentRemoved,
    TResult Function(FormSubmitted value)? formSubmitted,
    TResult Function(CheckFormSubmissionRequested value)?
        checkFormSubmissionRequested,
    TResult Function(TypeChosen value)? typeChosen,
    required TResult orElse(),
  }) {
    if (typeChosen != null) {
      return typeChosen(this);
    }
    return orElse();
  }
}

abstract class TypeChosen implements SubmissionEvent {
  const factory TypeChosen(String type) = _$TypeChosen;

  String get type;
  @JsonKey(ignore: true)
  $TypeChosenCopyWith<TypeChosen> get copyWith =>
      throw _privateConstructorUsedError;
}

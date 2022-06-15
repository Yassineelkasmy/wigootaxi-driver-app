// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'matrix_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MatrixResponse _$MatrixResponseFromJson(Map<String, dynamic> json) {
  return _MatrixResponse.fromJson(json);
}

/// @nodoc
class _$MatrixResponseTearOff {
  const _$MatrixResponseTearOff();

  _MatrixResponse call({required List<MatrixRow> rows}) {
    return _MatrixResponse(
      rows: rows,
    );
  }

  MatrixResponse fromJson(Map<String, Object?> json) {
    return MatrixResponse.fromJson(json);
  }
}

/// @nodoc
const $MatrixResponse = _$MatrixResponseTearOff();

/// @nodoc
mixin _$MatrixResponse {
  List<MatrixRow> get rows => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MatrixResponseCopyWith<MatrixResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MatrixResponseCopyWith<$Res> {
  factory $MatrixResponseCopyWith(
          MatrixResponse value, $Res Function(MatrixResponse) then) =
      _$MatrixResponseCopyWithImpl<$Res>;
  $Res call({List<MatrixRow> rows});
}

/// @nodoc
class _$MatrixResponseCopyWithImpl<$Res>
    implements $MatrixResponseCopyWith<$Res> {
  _$MatrixResponseCopyWithImpl(this._value, this._then);

  final MatrixResponse _value;
  // ignore: unused_field
  final $Res Function(MatrixResponse) _then;

  @override
  $Res call({
    Object? rows = freezed,
  }) {
    return _then(_value.copyWith(
      rows: rows == freezed
          ? _value.rows
          : rows // ignore: cast_nullable_to_non_nullable
              as List<MatrixRow>,
    ));
  }
}

/// @nodoc
abstract class _$MatrixResponseCopyWith<$Res>
    implements $MatrixResponseCopyWith<$Res> {
  factory _$MatrixResponseCopyWith(
          _MatrixResponse value, $Res Function(_MatrixResponse) then) =
      __$MatrixResponseCopyWithImpl<$Res>;
  @override
  $Res call({List<MatrixRow> rows});
}

/// @nodoc
class __$MatrixResponseCopyWithImpl<$Res>
    extends _$MatrixResponseCopyWithImpl<$Res>
    implements _$MatrixResponseCopyWith<$Res> {
  __$MatrixResponseCopyWithImpl(
      _MatrixResponse _value, $Res Function(_MatrixResponse) _then)
      : super(_value, (v) => _then(v as _MatrixResponse));

  @override
  _MatrixResponse get _value => super._value as _MatrixResponse;

  @override
  $Res call({
    Object? rows = freezed,
  }) {
    return _then(_MatrixResponse(
      rows: rows == freezed
          ? _value.rows
          : rows // ignore: cast_nullable_to_non_nullable
              as List<MatrixRow>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MatrixResponse implements _MatrixResponse {
  const _$_MatrixResponse({required this.rows});

  factory _$_MatrixResponse.fromJson(Map<String, dynamic> json) =>
      _$$_MatrixResponseFromJson(json);

  @override
  final List<MatrixRow> rows;

  @override
  String toString() {
    return 'MatrixResponse(rows: $rows)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MatrixResponse &&
            const DeepCollectionEquality().equals(other.rows, rows));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(rows));

  @JsonKey(ignore: true)
  @override
  _$MatrixResponseCopyWith<_MatrixResponse> get copyWith =>
      __$MatrixResponseCopyWithImpl<_MatrixResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MatrixResponseToJson(this);
  }
}

abstract class _MatrixResponse implements MatrixResponse {
  const factory _MatrixResponse({required List<MatrixRow> rows}) =
      _$_MatrixResponse;

  factory _MatrixResponse.fromJson(Map<String, dynamic> json) =
      _$_MatrixResponse.fromJson;

  @override
  List<MatrixRow> get rows;
  @override
  @JsonKey(ignore: true)
  _$MatrixResponseCopyWith<_MatrixResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

MatrixRow _$MatrixRowFromJson(Map<String, dynamic> json) {
  return _MatrixRow.fromJson(json);
}

/// @nodoc
class _$MatrixRowTearOff {
  const _$MatrixRowTearOff();

  _MatrixRow call({required List<MatrixElement> elements}) {
    return _MatrixRow(
      elements: elements,
    );
  }

  MatrixRow fromJson(Map<String, Object?> json) {
    return MatrixRow.fromJson(json);
  }
}

/// @nodoc
const $MatrixRow = _$MatrixRowTearOff();

/// @nodoc
mixin _$MatrixRow {
  List<MatrixElement> get elements => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MatrixRowCopyWith<MatrixRow> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MatrixRowCopyWith<$Res> {
  factory $MatrixRowCopyWith(MatrixRow value, $Res Function(MatrixRow) then) =
      _$MatrixRowCopyWithImpl<$Res>;
  $Res call({List<MatrixElement> elements});
}

/// @nodoc
class _$MatrixRowCopyWithImpl<$Res> implements $MatrixRowCopyWith<$Res> {
  _$MatrixRowCopyWithImpl(this._value, this._then);

  final MatrixRow _value;
  // ignore: unused_field
  final $Res Function(MatrixRow) _then;

  @override
  $Res call({
    Object? elements = freezed,
  }) {
    return _then(_value.copyWith(
      elements: elements == freezed
          ? _value.elements
          : elements // ignore: cast_nullable_to_non_nullable
              as List<MatrixElement>,
    ));
  }
}

/// @nodoc
abstract class _$MatrixRowCopyWith<$Res> implements $MatrixRowCopyWith<$Res> {
  factory _$MatrixRowCopyWith(
          _MatrixRow value, $Res Function(_MatrixRow) then) =
      __$MatrixRowCopyWithImpl<$Res>;
  @override
  $Res call({List<MatrixElement> elements});
}

/// @nodoc
class __$MatrixRowCopyWithImpl<$Res> extends _$MatrixRowCopyWithImpl<$Res>
    implements _$MatrixRowCopyWith<$Res> {
  __$MatrixRowCopyWithImpl(_MatrixRow _value, $Res Function(_MatrixRow) _then)
      : super(_value, (v) => _then(v as _MatrixRow));

  @override
  _MatrixRow get _value => super._value as _MatrixRow;

  @override
  $Res call({
    Object? elements = freezed,
  }) {
    return _then(_MatrixRow(
      elements: elements == freezed
          ? _value.elements
          : elements // ignore: cast_nullable_to_non_nullable
              as List<MatrixElement>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MatrixRow implements _MatrixRow {
  const _$_MatrixRow({required this.elements});

  factory _$_MatrixRow.fromJson(Map<String, dynamic> json) =>
      _$$_MatrixRowFromJson(json);

  @override
  final List<MatrixElement> elements;

  @override
  String toString() {
    return 'MatrixRow(elements: $elements)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MatrixRow &&
            const DeepCollectionEquality().equals(other.elements, elements));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(elements));

  @JsonKey(ignore: true)
  @override
  _$MatrixRowCopyWith<_MatrixRow> get copyWith =>
      __$MatrixRowCopyWithImpl<_MatrixRow>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MatrixRowToJson(this);
  }
}

abstract class _MatrixRow implements MatrixRow {
  const factory _MatrixRow({required List<MatrixElement> elements}) =
      _$_MatrixRow;

  factory _MatrixRow.fromJson(Map<String, dynamic> json) =
      _$_MatrixRow.fromJson;

  @override
  List<MatrixElement> get elements;
  @override
  @JsonKey(ignore: true)
  _$MatrixRowCopyWith<_MatrixRow> get copyWith =>
      throw _privateConstructorUsedError;
}

MatrixElement _$MatrixElementFromJson(Map<String, dynamic> json) {
  return _MatrixElement.fromJson(json);
}

/// @nodoc
class _$MatrixElementTearOff {
  const _$MatrixElementTearOff();

  _MatrixElement call(
      {required MatrixData duration,
      required MatrixData distance,
      required String status}) {
    return _MatrixElement(
      duration: duration,
      distance: distance,
      status: status,
    );
  }

  MatrixElement fromJson(Map<String, Object?> json) {
    return MatrixElement.fromJson(json);
  }
}

/// @nodoc
const $MatrixElement = _$MatrixElementTearOff();

/// @nodoc
mixin _$MatrixElement {
  MatrixData get duration => throw _privateConstructorUsedError;
  MatrixData get distance =>
      throw _privateConstructorUsedError; // required MatrixData duration_in_traffic,
  String get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MatrixElementCopyWith<MatrixElement> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MatrixElementCopyWith<$Res> {
  factory $MatrixElementCopyWith(
          MatrixElement value, $Res Function(MatrixElement) then) =
      _$MatrixElementCopyWithImpl<$Res>;
  $Res call({MatrixData duration, MatrixData distance, String status});

  $MatrixDataCopyWith<$Res> get duration;
  $MatrixDataCopyWith<$Res> get distance;
}

/// @nodoc
class _$MatrixElementCopyWithImpl<$Res>
    implements $MatrixElementCopyWith<$Res> {
  _$MatrixElementCopyWithImpl(this._value, this._then);

  final MatrixElement _value;
  // ignore: unused_field
  final $Res Function(MatrixElement) _then;

  @override
  $Res call({
    Object? duration = freezed,
    Object? distance = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as MatrixData,
      distance: distance == freezed
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as MatrixData,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $MatrixDataCopyWith<$Res> get duration {
    return $MatrixDataCopyWith<$Res>(_value.duration, (value) {
      return _then(_value.copyWith(duration: value));
    });
  }

  @override
  $MatrixDataCopyWith<$Res> get distance {
    return $MatrixDataCopyWith<$Res>(_value.distance, (value) {
      return _then(_value.copyWith(distance: value));
    });
  }
}

/// @nodoc
abstract class _$MatrixElementCopyWith<$Res>
    implements $MatrixElementCopyWith<$Res> {
  factory _$MatrixElementCopyWith(
          _MatrixElement value, $Res Function(_MatrixElement) then) =
      __$MatrixElementCopyWithImpl<$Res>;
  @override
  $Res call({MatrixData duration, MatrixData distance, String status});

  @override
  $MatrixDataCopyWith<$Res> get duration;
  @override
  $MatrixDataCopyWith<$Res> get distance;
}

/// @nodoc
class __$MatrixElementCopyWithImpl<$Res>
    extends _$MatrixElementCopyWithImpl<$Res>
    implements _$MatrixElementCopyWith<$Res> {
  __$MatrixElementCopyWithImpl(
      _MatrixElement _value, $Res Function(_MatrixElement) _then)
      : super(_value, (v) => _then(v as _MatrixElement));

  @override
  _MatrixElement get _value => super._value as _MatrixElement;

  @override
  $Res call({
    Object? duration = freezed,
    Object? distance = freezed,
    Object? status = freezed,
  }) {
    return _then(_MatrixElement(
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as MatrixData,
      distance: distance == freezed
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as MatrixData,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MatrixElement implements _MatrixElement {
  const _$_MatrixElement(
      {required this.duration, required this.distance, required this.status});

  factory _$_MatrixElement.fromJson(Map<String, dynamic> json) =>
      _$$_MatrixElementFromJson(json);

  @override
  final MatrixData duration;
  @override
  final MatrixData distance;
  @override // required MatrixData duration_in_traffic,
  final String status;

  @override
  String toString() {
    return 'MatrixElement(duration: $duration, distance: $distance, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MatrixElement &&
            const DeepCollectionEquality().equals(other.duration, duration) &&
            const DeepCollectionEquality().equals(other.distance, distance) &&
            const DeepCollectionEquality().equals(other.status, status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(duration),
      const DeepCollectionEquality().hash(distance),
      const DeepCollectionEquality().hash(status));

  @JsonKey(ignore: true)
  @override
  _$MatrixElementCopyWith<_MatrixElement> get copyWith =>
      __$MatrixElementCopyWithImpl<_MatrixElement>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MatrixElementToJson(this);
  }
}

abstract class _MatrixElement implements MatrixElement {
  const factory _MatrixElement(
      {required MatrixData duration,
      required MatrixData distance,
      required String status}) = _$_MatrixElement;

  factory _MatrixElement.fromJson(Map<String, dynamic> json) =
      _$_MatrixElement.fromJson;

  @override
  MatrixData get duration;
  @override
  MatrixData get distance;
  @override // required MatrixData duration_in_traffic,
  String get status;
  @override
  @JsonKey(ignore: true)
  _$MatrixElementCopyWith<_MatrixElement> get copyWith =>
      throw _privateConstructorUsedError;
}

MatrixData _$MatrixDataFromJson(Map<String, dynamic> json) {
  return _MatrixData.fromJson(json);
}

/// @nodoc
class _$MatrixDataTearOff {
  const _$MatrixDataTearOff();

  _MatrixData call({required String text, required int value}) {
    return _MatrixData(
      text: text,
      value: value,
    );
  }

  MatrixData fromJson(Map<String, Object?> json) {
    return MatrixData.fromJson(json);
  }
}

/// @nodoc
const $MatrixData = _$MatrixDataTearOff();

/// @nodoc
mixin _$MatrixData {
  String get text => throw _privateConstructorUsedError;
  int get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MatrixDataCopyWith<MatrixData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MatrixDataCopyWith<$Res> {
  factory $MatrixDataCopyWith(
          MatrixData value, $Res Function(MatrixData) then) =
      _$MatrixDataCopyWithImpl<$Res>;
  $Res call({String text, int value});
}

/// @nodoc
class _$MatrixDataCopyWithImpl<$Res> implements $MatrixDataCopyWith<$Res> {
  _$MatrixDataCopyWithImpl(this._value, this._then);

  final MatrixData _value;
  // ignore: unused_field
  final $Res Function(MatrixData) _then;

  @override
  $Res call({
    Object? text = freezed,
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$MatrixDataCopyWith<$Res> implements $MatrixDataCopyWith<$Res> {
  factory _$MatrixDataCopyWith(
          _MatrixData value, $Res Function(_MatrixData) then) =
      __$MatrixDataCopyWithImpl<$Res>;
  @override
  $Res call({String text, int value});
}

/// @nodoc
class __$MatrixDataCopyWithImpl<$Res> extends _$MatrixDataCopyWithImpl<$Res>
    implements _$MatrixDataCopyWith<$Res> {
  __$MatrixDataCopyWithImpl(
      _MatrixData _value, $Res Function(_MatrixData) _then)
      : super(_value, (v) => _then(v as _MatrixData));

  @override
  _MatrixData get _value => super._value as _MatrixData;

  @override
  $Res call({
    Object? text = freezed,
    Object? value = freezed,
  }) {
    return _then(_MatrixData(
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MatrixData implements _MatrixData {
  const _$_MatrixData({required this.text, required this.value});

  factory _$_MatrixData.fromJson(Map<String, dynamic> json) =>
      _$$_MatrixDataFromJson(json);

  @override
  final String text;
  @override
  final int value;

  @override
  String toString() {
    return 'MatrixData(text: $text, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MatrixData &&
            const DeepCollectionEquality().equals(other.text, text) &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(text),
      const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$MatrixDataCopyWith<_MatrixData> get copyWith =>
      __$MatrixDataCopyWithImpl<_MatrixData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MatrixDataToJson(this);
  }
}

abstract class _MatrixData implements MatrixData {
  const factory _MatrixData({required String text, required int value}) =
      _$_MatrixData;

  factory _MatrixData.fromJson(Map<String, dynamic> json) =
      _$_MatrixData.fromJson;

  @override
  String get text;
  @override
  int get value;
  @override
  @JsonKey(ignore: true)
  _$MatrixDataCopyWith<_MatrixData> get copyWith =>
      throw _privateConstructorUsedError;
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'matrix_failure.freezed.dart';

@freezed
class MatrixFailure with _$MatrixFailure {
  const factory MatrixFailure.serverError() = _MatrixFailure;
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'matrix_response.freezed.dart';
part 'matrix_response.g.dart';

@freezed
class MatrixResponse with _$MatrixResponse {
  const factory MatrixResponse({required List<MatrixRow> rows}) =
      _MatrixResponse;
  factory MatrixResponse.fromJson(Map<String, dynamic> json) =>
      _$MatrixResponseFromJson(json);
}

@freezed
class MatrixRow with _$MatrixRow {
  const factory MatrixRow({required List<MatrixElement> elements}) = _MatrixRow;

  factory MatrixRow.fromJson(Map<String, dynamic> json) =>
      _$MatrixRowFromJson(json);
}

@freezed
class MatrixElement with _$MatrixElement {
  const factory MatrixElement({
    required MatrixData duration,
    required MatrixData distance,
    // required MatrixData duration_in_traffic,
    required String status,
  }) = _MatrixElement;

  factory MatrixElement.fromJson(Map<String, dynamic> json) =>
      _$MatrixElementFromJson(json);
}

@freezed
class MatrixData with _$MatrixData {
  const factory MatrixData({required String text, required int value}) =
      _MatrixData;

  factory MatrixData.fromJson(Map<String, dynamic> json) =>
      _$MatrixDataFromJson(json);
}

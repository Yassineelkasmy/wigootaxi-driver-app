import 'package:freezed_annotation/freezed_annotation.dart';

part 'submission_state.freezed.dart';

@freezed
class SubmissionState with _$SubmissionState {
  const factory SubmissionState({
    required bool isSubmitting,
    required String type,
    required Map<String, String> docs,
  }) = _SubmissionState;

  factory SubmissionState.initial() => SubmissionState(
        isSubmitting: false,
        type: '',
        docs: {},
      );
}

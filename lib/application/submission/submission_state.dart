import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wigootaxidriver/domain/submission/submission.dart';
import 'package:wigootaxidriver/domain/submission/submission_failure.dart';

part 'submission_state.freezed.dart';

@freezed
class SubmissionState with _$SubmissionState {
  const factory SubmissionState({
    required bool isSubmitting,
    required String type,
    required Map<String, dynamic> docs,
    required Option<Either<SubmissionFailure, Unit>> failureOrSuccessOption,
    Submission? submission,
  }) = _SubmissionState;

  factory SubmissionState.initial() => SubmissionState(
        isSubmitting: false,
        type: '',
        docs: {},
        failureOrSuccessOption: none(),
      );
}

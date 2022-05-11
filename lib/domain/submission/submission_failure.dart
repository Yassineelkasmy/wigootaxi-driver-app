import 'package:freezed_annotation/freezed_annotation.dart';

part 'submission_failure.freezed.dart';

@freezed
class SubmissionFailure with _$SubmissionFailure {
  const factory SubmissionFailure.serverError() = ServerError;
}

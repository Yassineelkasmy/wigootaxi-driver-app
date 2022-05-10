import 'package:freezed_annotation/freezed_annotation.dart';

part 'submission_event.freezed.dart';

@freezed
class SubmissionEvent with _$SubmissionEvent {
  const factory SubmissionEvent.documentSubmitted(
      String url, String name, String userid) = DocumentSubmitted;
  const factory SubmissionEvent.formSubmitted() = FormSubmitted;
  const factory SubmissionEvent.createUserSubmissionRequested(String userId) =
      CreateUserSubmissionRequested;
}

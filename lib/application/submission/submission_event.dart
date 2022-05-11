import 'package:freezed_annotation/freezed_annotation.dart';

part 'submission_event.freezed.dart';

@freezed
class SubmissionEvent with _$SubmissionEvent {
  const factory SubmissionEvent.documentSubmitted(
    String url,
    String name,
    String userid,
  ) = DocumentSubmitted;
  const factory SubmissionEvent.documentRemoved(
    String name,
  ) = DocumentRemoved;
  const factory SubmissionEvent.formSubmitted(String userid) = FormSubmitted;
  const factory SubmissionEvent.checkFormSubmissionRequested(String userid) =
      CheckFormSubmissionRequested;

  const factory SubmissionEvent.typeChosen(String type) = TypeChosen;
}

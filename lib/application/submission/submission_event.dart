import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wigootaxidriver/domain/auth/user.dart';

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
  const factory SubmissionEvent.formSubmitted(User user) = FormSubmitted;
  const factory SubmissionEvent.checkFormSubmissionRequested(String userid) =
      CheckFormSubmissionRequested;

  const factory SubmissionEvent.typeChosen(String type) = TypeChosen;
}

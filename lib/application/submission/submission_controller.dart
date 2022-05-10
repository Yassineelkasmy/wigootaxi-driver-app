import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:wigootaxidriver/application/submission/submission_event.dart';
import 'package:wigootaxidriver/application/submission/submission_state.dart';
import 'package:wigootaxidriver/infrastructure/user_service.dart';

class SubmissionController extends StateNotifier<SubmissionState> {
  SubmissionController(this._userService) : super(SubmissionState.initial());

  final UserService _userService;

  Future mapEventToState(SubmissionEvent event) {
    return event.map(
      documentSubmitted: (event) async {
        state = state.copyWith(isSubmitting: true);
        await _userService.submitDocument(
          event.userid,
          event.name,
          event.url,
        );
        state = state.copyWith(isSubmitting: false);
      },
      formSubmitted: (event) async {},
      createUserSubmissionRequested: (event) async {
        state = state.copyWith(isSubmitting: true);
        await _userService.createSubmission(event.userId);
        state = state.copyWith(isSubmitting: false);
      },
    );
  }
}

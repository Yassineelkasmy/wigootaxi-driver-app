import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:wigootaxidriver/application/submission/submission_event.dart';
import 'package:wigootaxidriver/application/submission/submission_state.dart';
import 'package:wigootaxidriver/infrastructure/user_service.dart';

class SubmissionController extends StateNotifier<SubmissionState> {
  SubmissionController(this._userService) : super(SubmissionState.initial()) {}

  final UserService _userService;

  Future mapEventToState(SubmissionEvent event) {
    return event.map(
      checkFormSubmissionRequested: (event) async {
        final submissionOrFailure =
            await _userService.getSubmission(event.userid);
        submissionOrFailure.fold(
          (l) => print('error'),
          (submission) {
            print(submission);
            state = state.copyWith(submission: submission);
          },
        );
      },
      documentSubmitted: (event) async {
        state = state.copyWith(
          isSubmitting: true,
          failureOrSuccessOption: none(),
        );
        print(event.url);
        state = state.copyWith(
          docs: state.docs
            ..putIfAbsent(event.name, () => event.url)
            ..update(event.name, (value) => event.url),
        );
        print(state.docs.length);
        state = state.copyWith(isSubmitting: false);
      },
      formSubmitted: (event) async {
        if (state.docs.length == 7) {
          state = state.copyWith(
            isSubmitting: true,
            failureOrSuccessOption: none(),
          );
          final failureOrSuccess = await _userService.submitDocument(
            event.user.uid,
            state.docs
              ..putIfAbsent('status', () => 'pending')
              ..putIfAbsent('ts', () => Timestamp.now())
              ..putIfAbsent('type', () => state.type)
              ..putIfAbsent('username', () => state.type)
              ..putIfAbsent('email', () => state.type)
              ..putIfAbsent('phone', () => event.user.phone),
          );
          state = state.copyWith(
            isSubmitting: false,
            failureOrSuccessOption: optionOf(failureOrSuccess),
          );
          mapEventToState(
            SubmissionEvent.checkFormSubmissionRequested(event.user.uid),
          );
        }
      },
      typeChosen: (event) async {
        state = state.copyWith(
          type: event.type,
          failureOrSuccessOption: none(),
        );
      },
      documentRemoved: (event) async {
        state = state.copyWith(
          docs: state.docs..remove(event.name),
          failureOrSuccessOption: none(),
        );
        print(state.docs.length);
      },
    );
  }
}

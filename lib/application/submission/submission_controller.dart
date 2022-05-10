import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:wigootaxidriver/application/submission/submission_state.dart';
import 'package:wigootaxidriver/infrastructure/user_service.dart';

class SubmissionController extends StateNotifier<SubmissionState> {
  SubmissionController(this._userService) : super(SubmissionState.initial());

  final UserService _userService;
}

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:wigootaxidriver/application/providers/user_service_provider.dart';
import 'package:wigootaxidriver/application/submission/submission_controller.dart';
import 'package:wigootaxidriver/application/submission/submission_state.dart';

final submissionProvider =
    StateNotifierProvider<SubmissionController, SubmissionState>((ref) {
  final userService = ref.watch(userServiceProvider);
  final submissionController = SubmissionController(userService);

  return submissionController;
});

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:wigootaxidriver/profile/application/profile_controller.dart';
import 'package:wigootaxidriver/profile/application/profile_state.dart';
import 'package:wigootaxidriver/profile/services/metrics_service.dart';
import 'package:wigootaxidriver/profile/services/profile_service.dart';

final profileProvider =
    StateNotifierProvider.autoDispose<ProfileController, ProfileState>(
  (ref) {
    final profileService = ProfileService();
    final metricsService = MetricsService();
    final profileController = ProfileController(profileService, metricsService);
    return profileController;
  },
);

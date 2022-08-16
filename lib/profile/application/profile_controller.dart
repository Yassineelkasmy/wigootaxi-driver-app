import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:wigootaxidriver/profile/application/profile_event.dart';
import 'package:wigootaxidriver/profile/application/profile_state.dart';

class ProfileController extends StateNotifier<ProfileState> {
  ProfileController() : super(ProfileState.initial());

  Future mapEventToState(ProfileEvent event) {
    return event.map(
      finishedRidesRequested: (event) async {},
      userCancelledRidesRequested: (event) async {},
      driverCancelledRidesRequested: (event) async {},
      driverRecordRequested: (event) async {},
    );
  }
}

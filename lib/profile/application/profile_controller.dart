import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:wigootaxidriver/profile/application/profile_event.dart';
import 'package:wigootaxidriver/profile/application/profile_state.dart';
import 'package:wigootaxidriver/profile/services/profile_service.dart';

class ProfileController extends StateNotifier<ProfileState> {
  ProfileController(this._profileService) : super(ProfileState.initial()) {
    mapEventToState(ProfileEvent.driverRecordRequested());
    mapEventToState(ProfileEvent.finishedRidesRequested());
    mapEventToState(ProfileEvent.userCancelledRidesRequested());
    mapEventToState(ProfileEvent.driverCancelledRidesRequested());
  }
  final ProfileService _profileService;

  Future mapEventToState(ProfileEvent event) {
    return event.map(
      finishedRidesRequested: (event) async {
        final ridesOrFailure = await _profileService.getRidesWithCanncellOption(
          option: 'finished',
        );

        ridesOrFailure.map(
          (rides) => state = state.copyWith(finishedRides: rides),
        );
      },
      userCancelledRidesRequested: (event) async {
        final ridesOrFailure = await _profileService.getRidesWithCanncellOption(
          option: 'cancelledByUser',
        );

        ridesOrFailure.map(
          (rides) => state = state.copyWith(userCancelledRides: rides),
        );
      },
      driverCancelledRidesRequested: (event) async {
        final ridesOrFailure = await _profileService.getRidesWithCanncellOption(
          option: 'cancelledByDriver',
        );

        ridesOrFailure.map(
          (rides) => state = state.copyWith(driverCancelledRides: rides),
        );
      },
      driverRecordRequested: (event) async {
        final driverOrFailure = await _profileService.getDriverRecord();
        driverOrFailure.map(
          (driverProfile) =>
              state = state.copyWith(driverProfile: driverProfile),
        );
      },
    );
  }
}

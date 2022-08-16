import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wigootaxidriver/driver/domain/driver_record.dart';
import 'package:wigootaxidriver/ride/domain/ride.dart';

part 'profile_state.freezed.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState({
    DriverRecord? driverRecord,
    required List<Ride> finishedRides,
    required List<Ride> userCancelledRides,
    required List<Ride> driverCancelledRides,
    required bool isLoading,
  }) = _ProfileState;

  factory ProfileState.initial() => ProfileState(
        finishedRides: [],
        isLoading: false,
        userCancelledRides: [],
        driverCancelledRides: [],
      );
}

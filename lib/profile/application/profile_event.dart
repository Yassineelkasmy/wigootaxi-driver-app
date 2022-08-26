import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_event.freezed.dart';

@freezed
class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.finishedRidesRequested() = FinishedRidesRequested;
  const factory ProfileEvent.userCancelledRidesRequested() =
      UserCancelledRidesRequested;
  const factory ProfileEvent.driverCancelledRidesRequested() =
      DriverCancelledRidesRequested;
  const factory ProfileEvent.driverRecordRequested() = DriverRecordRequested;
  const factory ProfileEvent.metricsRequested() = MetricsRequested;
}

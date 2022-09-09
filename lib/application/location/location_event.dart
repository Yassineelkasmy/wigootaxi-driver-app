import 'package:freezed_annotation/freezed_annotation.dart';

part 'location_event.freezed.dart';

@freezed
class LocationEvent with _$LocationEvent {
  const factory LocationEvent.locationRequested({
    required bool pressed,
  }) = LocationRequested;
  const factory LocationEvent.locationDetected() = LocationDetected;
  const factory LocationEvent.permessionDenied() = PermessionDenied;
}

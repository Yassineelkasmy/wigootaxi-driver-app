import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wigootaxidriver/domain/nearby_search/nearby_search.dart';

part 'pick_up_event.freezed.dart';

@freezed
class PickUpEvent with _$PickUpEvent {
  const factory PickUpEvent.startedTyping() = StartedTyping;
  const factory PickUpEvent.nearbyQueryChanged(String query) =
      NearbyQueryChanged;
  const factory PickUpEvent.nearbyLocationsRequested() =
      NearbyLocationsRequested;

  const factory PickUpEvent.pickupChoosen(NearbySearch pickup) = PickupChoosen;
  const factory PickUpEvent.dropoffChoosen(NearbySearch dropoff) =
      DropoffChoosen;
}

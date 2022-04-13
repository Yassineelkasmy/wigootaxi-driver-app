import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wigootaxidriver/domain/nearby_search/nearby_search.dart';

part 'pick_up_state.freezed.dart';

@freezed
class PickUpState with _$PickUpState {
  const factory PickUpState({
    required bool isGeocodingFromMapLoaidng,
    required bool isNearbyPlacesLoading,
    required String nearbyQuery,
    NearbySearch? dropoffPlace,
    NearbySearch? pickupPlace,
    required List<NearbySearch> places,
  }) = _PickUpState;
}

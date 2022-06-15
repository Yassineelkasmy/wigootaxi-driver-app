import 'package:freezed_annotation/freezed_annotation.dart';

part 'nearby_search.freezed.dart';
part 'nearby_search.g.dart';

@freezed
class NearbySearch with _$NearbySearch {
  const factory NearbySearch({
    required String name,
    @JsonKey(name: 'place_id') required String placeId,
    required String vicinity,
    required NearbyGeometry geometry,
    required List<String> types,
  }) = _NearbySearch;
  factory NearbySearch.fromJson(Map<String, dynamic> json) =>
      _$NearbySearchFromJson(json);
}

@freezed
class NearbySearchResult with _$NearbySearchResult {
  const factory NearbySearchResult({required List<NearbySearch> results}) =
      _NearbySearchResult;
  factory NearbySearchResult.fromJson(Map<String, dynamic> json) =>
      _$NearbySearchResultFromJson(json);
}

@freezed
class NearbyGeometry with _$NearbyGeometry {
  const factory NearbyGeometry({
    required NearbyGeometryLocation location,
  }) = _NearbyGeometry;

  factory NearbyGeometry.fromJson(Map<String, dynamic> json) =>
      _$NearbyGeometryFromJson(json);
}

@freezed
class NearbyGeometryLocation with _$NearbyGeometryLocation {
  const factory NearbyGeometryLocation({
    required double lat,
    required double lng,
  }) = _NearbyGeometryLocation;

  factory NearbyGeometryLocation.fromJson(Map<String, dynamic> json) =>
      _$NearbyGeometryLocationFromJson(json);
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nearby_search.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NearbySearch _$$_NearbySearchFromJson(Map<String, dynamic> json) =>
    _$_NearbySearch(
      name: json['name'] as String,
      placeId: json['place_id'] as String,
      vicinity: json['vicinity'] as String,
      geometry:
          NearbyGeometry.fromJson(json['geometry'] as Map<String, dynamic>),
      types: (json['types'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_NearbySearchToJson(_$_NearbySearch instance) =>
    <String, dynamic>{
      'name': instance.name,
      'place_id': instance.placeId,
      'vicinity': instance.vicinity,
      'geometry': instance.geometry,
      'types': instance.types,
    };

_$_NearbySearchResult _$$_NearbySearchResultFromJson(
        Map<String, dynamic> json) =>
    _$_NearbySearchResult(
      results: (json['results'] as List<dynamic>)
          .map((e) => NearbySearch.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_NearbySearchResultToJson(
        _$_NearbySearchResult instance) =>
    <String, dynamic>{
      'results': instance.results,
    };

_$_NearbyGeometry _$$_NearbyGeometryFromJson(Map<String, dynamic> json) =>
    _$_NearbyGeometry(
      location: NearbyGeometryLocation.fromJson(
          json['location'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_NearbyGeometryToJson(_$_NearbyGeometry instance) =>
    <String, dynamic>{
      'location': instance.location,
    };

_$_NearbyGeometryLocation _$$_NearbyGeometryLocationFromJson(
        Map<String, dynamic> json) =>
    _$_NearbyGeometryLocation(
      lat: (json['lat'] as num).toDouble(),
      lng: (json['lng'] as num).toDouble(),
    );

Map<String, dynamic> _$$_NearbyGeometryLocationToJson(
        _$_NearbyGeometryLocation instance) =>
    <String, dynamic>{
      'lat': instance.lat,
      'lng': instance.lng,
    };

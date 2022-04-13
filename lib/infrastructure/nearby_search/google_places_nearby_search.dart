import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:wigootaxidriver/domain/nearby_search/i_nearby_search_repository.dart';
import 'package:wigootaxidriver/domain/nearby_search/nearby_search.dart';
import 'package:wigootaxidriver/domain/nearby_search/nearby_search_failure.dart';

class GooglePlacesNearbySearch implements INearbySearchRepository {
  static const apiKey = 'AIzaSyBcUiq4ME8Hc3N7nsoDs0YYC2e4nWwyghU';
  static const url =
      'https://maps.googleapis.com/maps/api/place/nearbysearch/json';

  @override
  Future<Either<NearbySearchFailure, List<NearbySearch>>> nearbyPlaces({
    required String lat,
    required String long,
    required String query,
  }) async {
    final queryParameters = {
      'keyword': query,
      'language': 'fr',
      'location': '$lat,$long',
      'radius': 50000,
      'key': apiKey,
    };

    try {
      final response = await Dio().get(url, queryParameters: queryParameters);
      return right(NearbySearchResult.fromJson(response.data).results);
    } catch (_) {
      return left(const NearbySearchFailure.serverError());
    }
  }
}

// Testing the Repository
void main() async {
  final autoComplete = GooglePlacesNearbySearch();
  final data = await autoComplete.nearbyPlaces(
      lat: '37.785834', long: '-122.406417', query: "san");
  data.fold((_) => print('error'), ((nearbyPlaces) => print(nearbyPlaces)));
}

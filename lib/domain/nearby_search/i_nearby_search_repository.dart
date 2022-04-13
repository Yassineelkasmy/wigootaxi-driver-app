import 'package:dartz/dartz.dart';
import 'package:wigootaxidriver/domain/nearby_search/nearby_search.dart';
import 'package:wigootaxidriver/domain/nearby_search/nearby_search_failure.dart';

abstract class INearbySearchRepository {
  Future<Either<NearbySearchFailure, List<NearbySearch>>> nearbyPlaces({
    required String lat,
    required String long,
    required String query,
  });
}

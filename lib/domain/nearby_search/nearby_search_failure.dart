import 'package:freezed_annotation/freezed_annotation.dart';

part 'nearby_search_failure.freezed.dart';

@freezed
class NearbySearchFailure with _$NearbySearchFailure {
  const factory NearbySearchFailure.serverError() = ServerError;
}

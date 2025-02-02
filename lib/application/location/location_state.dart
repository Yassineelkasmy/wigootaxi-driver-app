import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:wigootaxidriver/domain/location/location_failure.dart';

part 'location_state.freezed.dart';

@freezed
class LocationState with _$LocationState {
  const factory LocationState({
    required bool isRequesting,
    required Option<Either<LocationFailure, Unit>>
        locationFailureOrSuccessOption,
    Position? position,
  }) = _LocationState;

  factory LocationState.initial() => LocationState(
        isRequesting: false,
        locationFailureOrSuccessOption: none(),
      );
}

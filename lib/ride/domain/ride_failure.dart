import 'package:freezed_annotation/freezed_annotation.dart';

part 'ride_failure.freezed.dart';

@freezed
class RideFailure with _$RideFailure {
  const factory RideFailure.serverError() = ServerError;
}

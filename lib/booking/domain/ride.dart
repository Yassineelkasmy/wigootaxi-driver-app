import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wigootaxidriver/domain/google_matrix/matrix_response.dart';
import 'package:wigootaxidriver/domain/nearby_search/nearby_search.dart';

part 'ride.freezed.dart';

@freezed
class Ride with _$Ride {
  const factory Ride({
    required NearbySearch droppOff,
    required NearbySearch pickUp,
    required RideType type,
    required MatrixResponse googelMatrix,
    required int duration,
    required int distance,
    DateTime? date,
  }) = _Ride;
}

String typeToString(Ride ride) {
  return ride.type == RideType.now ? 'Maintenant' : 'Prévu le';
}

enum RideType {
  now,
  shceduled,
}

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wigootaxidriver/booking/domain/booking.dart';

part 'ride_state.freezed.dart';

@freezed
class RideState with _$RideState {
  const factory RideState({
    Booking? currentBooking,
  }) = _RideState;
}

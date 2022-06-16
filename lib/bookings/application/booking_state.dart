import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wigootaxidriver/booking/domain/booking.dart';
import 'package:wigootaxidriver/booking/domain/booking_failure.dart';

part 'booking_state.freezed.dart';

@freezed
class BookingState with _$BookingState {
  const factory BookingState({
    required bool bookingRide,
    required bool loadingMyBookings,
    required List<Booking> bookings,
    required Option<Either<BookingFailure, Unit>> bookingFailureOrSuccessOption,
  }) = _BookingState;

  factory BookingState.initial() => BookingState(
        bookingRide: false,
        loadingMyBookings: false,
        bookings: [],
        bookingFailureOrSuccessOption: none(),
      );
}

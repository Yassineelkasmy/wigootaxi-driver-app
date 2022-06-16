import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:wigootaxidriver/bookings/application/booking_event.dart';
import 'package:wigootaxidriver/bookings/application/booking_state.dart';
import 'package:wigootaxidriver/booking/domain/booking.dart';
import 'package:wigootaxidriver/bookings/services/booking_service.dart';

class BookingController extends StateNotifier<BookingState> {
  BookingController() : super(BookingState.initial());
  late StreamSubscription<List<Booking>> _subscription;

  initializeStream(String userUid) {
    _subscription = _bookingService.requestsStream(userUid).listen(
      (bookings) async {
        state = state.copyWith(
          bookings: bookings,
        );
      },
    );
  }

  final _bookingService = BookingsService();

  Future mapEventToState(BookingEvent event) {
    return event.map(
      bookRideRequested: (event) async {
        final ride = event.ride;
        final user = event.user;
        state = state.copyWith(bookingRide: true);
        final successOrFailureOption = await _bookingService.bookRide(
          ride: ride,
          userUid: user.uid,
          phone: user.phone!,
          driverId: event.driverId,
        );
        state = state.copyWith(
          bookingRide: false,
          bookingFailureOrSuccessOption: optionOf(successOrFailureOption),
        );
      },
      bookingsRequested: (event) async {
        initializeStream(event.userUid);
      },
    );
  }
}

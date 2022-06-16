import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:wigootaxidriver/bookings/application/booking_controller.dart';
import 'package:wigootaxidriver/bookings/application/booking_state.dart';

final bookingProvider =
    StateNotifierProvider<BookingController, BookingState>((ref) {
  final bookingController = BookingController();
  return bookingController;
});

import 'package:freezed_annotation/freezed_annotation.dart';

part 'booking_failure.freezed.dart';

@freezed
class BookingFailure with _$BookingFailure {
  const factory BookingFailure.serverError() = ServerError;
}

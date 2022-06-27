import 'package:freezed_annotation/freezed_annotation.dart';

part 'driver_state.freezed.dart';

@freezed
class DriverState with _$DriverState {
  const factory DriverState({
    required bool isOnline,
    required bool isRiding,
    required bool isFree,
    String? booking_call,
  }) = _DriverState;

  factory DriverState.initial() => DriverState(
        isOnline: false,
        isRiding: false,
        isFree: false,
      );
}

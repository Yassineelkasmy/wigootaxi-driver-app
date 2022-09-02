import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:wigootaxidriver/application/providers/driver/driver_provider.dart';
import 'package:wigootaxidriver/ride/application/ride_controller.dart';
import 'package:wigootaxidriver/ride/application/ride_state.dart';

final rideProvider = StateNotifierProvider<RideController, RideState>((ref) {
  final driverController = ref.read(driverProvider.notifier);
  final rideController = RideController(driverController);

  return rideController;
});

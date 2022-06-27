import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:wigootaxidriver/driver/application/driver_state.dart';
import 'package:wigootaxidriver/driver/application/driver_controller.dart';

final driverProvider = StateNotifierProvider<DriverController, DriverState>(
  (ref) {
    final driverController = DriverController();
    return driverController;
  },
);

import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:wigootaxidriver/booking/services/booking_service.dart';
import 'package:wigootaxidriver/constants/storage_keys.dart';
import 'package:wigootaxidriver/driver/application/driver_event.dart';
import 'package:wigootaxidriver/driver/application/driver_state.dart';
import 'package:wigootaxidriver/driver/services/driver_service.dart';

class DriverController extends StateNotifier<DriverState> {
  DriverController() : super(DriverState.initial()) {
    initDriverState();
    initDriverDocStream();
  }

  final driverService = DriverService();
  final bookingService = BookingService();

  late StreamSubscription driverDocSubscription;
  final userUid = FirebaseAuth.instance.currentUser!.uid;
  SharedPreferences? prefs;

  void initDriverState() async {
    prefs ??= await SharedPreferences.getInstance();
    final isOnline = prefs!.getBool(isOnlineKey) ?? false;
    state = state.copyWith(isOnline: isOnline);
  }

  void initDriverDocStream() async {
    driverDocSubscription = driverService
        .driverRecordStream(userUid: userUid)
        .listen((driverRecord) {
      state = state.copyWith(driverRecord: driverRecord);
    });
  }

  Future mapEventToState(DriverEvent event) {
    return event.map(onlineActivated: (event) async {
      final _prefs = await SharedPreferences.getInstance();
      _prefs.setBool(isOnlineKey, true);
      state = state.copyWith(isOnline: true);
    }, onlineDeactivated: (event) async {
      final _prefs = await SharedPreferences.getInstance();
      _prefs.setBool(isOnlineKey, false);
      state = state.copyWith(isOnline: false);
    }, rideAccepted: (event) async {
      await bookingService.accpetRide(
        driverId: userUid,
        bookingId: state.driverRecord!.booking_call!,
      );
    });
  }
}

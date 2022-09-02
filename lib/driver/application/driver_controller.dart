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
        .listen((driverRecord) async {
      if (driverRecord.booking_call != null) {
        state = state.copyWith(
          currentRide: driverRecord.booking_call!,
          userRecord: driverRecord.booking!.user,
        );
      } else {
        //track current ride if driver has closed the app
        if (driverRecord.currentUserId != null) {
          final userRecordOrFailure = await bookingService.getUserRecord(
              userUid: driverRecord.currentUserId!);
          userRecordOrFailure.map(
            (userRecord) {
              state = state.copyWith(userRecord: userRecord);
            },
          );
        } else {
          state = state.copyWith(userRecord: null);
        }
      }
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
      final _prefs = await SharedPreferences.getInstance();

      bookingService.accpetRide(
        driverId: userUid,
        bookingId: state.driverRecord!.booking_call!,
        driverLat: event.driverLat,
        driverLng: event.driverLng,
      );

      _prefs.setString(
        currentRideKey,
        state.currentRide!,
      );

      _prefs.setBool(
        isDrivingKey,
        true,
      );
    }, currnetRideCleaned: (event) async {
      state = state.copyWith(currentRide: null, userRecord: null);
    });
  }
}

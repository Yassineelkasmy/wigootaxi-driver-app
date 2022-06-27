import 'package:firebase_auth/firebase_auth.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:wigootaxidriver/constants/storage_keys.dart';
import 'package:wigootaxidriver/driver/application/driver_event.dart';
import 'package:wigootaxidriver/driver/application/driver_state.dart';

class DriverController extends StateNotifier<DriverState> {
  DriverController() : super(DriverState.initial()) {
    initDriverState();
  }
  final userUid = FirebaseAuth.instance.currentUser!.uid;
  SharedPreferences? prefs;

  void initDriverState() async {
    prefs ??= await SharedPreferences.getInstance();
    final isOnline = prefs!.getBool(isOnlineKey) ?? false;
    state = state.copyWith(isOnline: isOnline);
  }

  Future mapEventToState(DriverEvent event) {
    return event.map(
      onlineActivated: (event) async {
        final _prefs = await SharedPreferences.getInstance();
        _prefs.setBool(isOnlineKey, true);
        state = state.copyWith(isOnline: true);
      },
      onlineDeactivated: (event) async {
        final _prefs = await SharedPreferences.getInstance();
        _prefs.setBool(isOnlineKey, false);
        state = state.copyWith(isOnline: false);
      },
    );
  }
}

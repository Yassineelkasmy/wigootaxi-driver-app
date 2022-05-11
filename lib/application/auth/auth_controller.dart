import 'package:shared_preferences/shared_preferences.dart';
import 'package:wigootaxidriver/application/auth/auth_event.dart';
import 'package:wigootaxidriver/application/auth/auth_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:wigootaxidriver/infrastructure/auth/firebase_auth.dart';

class AuthController extends StateNotifier<AuthState> {
  AuthController(
    this._authFacade,
  ) : super(const AuthState.initial());

  final FireBaseAuthFacade _authFacade;
  static const newUserKey = 'newUser';

  Future mapEventToState(AuthEvent authEvent) {
    return authEvent.map(authCheckRequested: (_) async {
      final prefs = await SharedPreferences.getInstance();
      bool? isNewUser = prefs.getBool(newUserKey);
      if (isNewUser == null) {
        await prefs.setBool(newUserKey, false);
        isNewUser = true;
      } else {
        isNewUser = false;
      }

      final userOption = await _authFacade.getSignedUser();
      userOption.fold(() async {
        state = AuthState.unauthenticated(isNewUser!);
      }, (user) {
        state = AuthState.authenticated(user);
      });
    }, signedOut: (_) async {
      state = AuthState.unauthenticated(false);
    });
  }
}

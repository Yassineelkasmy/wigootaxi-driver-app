import 'package:dartz/dartz.dart';
import 'package:wigootaxidriver/application/auth/auth_event.dart';
import 'package:wigootaxidriver/application/auth/auth_form/auth_form_event.dart';
import 'package:wigootaxidriver/application/auth/auth_form/auth_form_state.dart';
import 'package:wigootaxidriver/application/auth/auth_controller.dart';
import 'package:wigootaxidriver/domain/auth/i_auth_facade.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AuthFormController extends StateNotifier<AuthFormState> {
  AuthFormController(this._authFacade, this._authStateController)
      : super(AuthFormState.initial());
  final IAuthFacade _authFacade;
  final AuthController _authStateController;
  void checkAuthState() {
    _authStateController.mapEventToState(const AuthEvent.authCheckRequested());
  }

  Future mapEventToState(AuthFormEvent event) {
    return event.map(
      signInWithGooglePresseed: (_) async {
        state = state.copyWith(
          isSubmitting: true,
        );
        final authFailureOrSuccess = await _authFacade.signInWithGoogle();
        state = state.copyWith(
          authFailureOrSuccessOption: optionOf(authFailureOrSuccess),
          isSubmitting: false,
        );
        authFailureOrSuccess.map(
          (r) => checkAuthState(),
        );
      },
      signInWithFacebookPressed: (_) async {
        checkAuthState();
        throw UnimplementedError();
      },
      signOutPressed: (_) async {
        await _authFacade.signOut();
        _authStateController.mapEventToState(AuthEvent.signedOut());
      },
      registerWithGooglePressed: (_) async {
        state = state.copyWith(
          isSubmitting: true,
        );
        final authFailureOrSuccess = await _authFacade.registerWithGoogle();
        state = state.copyWith(
          authFailureOrSuccessOption: optionOf(authFailureOrSuccess),
          isSubmitting: false,
        );
        authFailureOrSuccess.map(
          (r) => checkAuthState(),
        );
      },
      registerWithFacebookPressed: (_) async {
        await _authFacade.registerWithFacebook();
        checkAuthState();
      },
      registerWithEmailAndPasswordPressed: (event) async {
        state = state.copyWith(isSubmitting: true);
        final registerWithSuccessOrFailure =
            await _authFacade.registerWithEmailAndPassword(
          email: event.email,
          password: event.email,
        );
        state = state.copyWith(isSubmitting: false);
      },
    );
  }
}

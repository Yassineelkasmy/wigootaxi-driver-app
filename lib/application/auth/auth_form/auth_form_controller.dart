import 'package:dartz/dartz.dart';
import 'package:wigootaxidriver/application/auth/auth_event.dart';
import 'package:wigootaxidriver/application/auth/auth_form/auth_form_event.dart';
import 'package:wigootaxidriver/application/auth/auth_form/auth_form_state.dart';
import 'package:wigootaxidriver/application/auth/auth_controller.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:wigootaxidriver/infrastructure/auth/firebase_auth.dart';

class AuthFormController extends StateNotifier<AuthFormState> {
  AuthFormController(this._authFacade, this._authStateController)
      : super(AuthFormState.initial());
  final FireBaseAuthFacade _authFacade;
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
        final authFailureOrSuccess = await _authFacade.signInWithFacebook();
        state = state.copyWith(
          authFailureOrSuccessOption: optionOf(authFailureOrSuccess),
          isSubmitting: false,
        );
        authFailureOrSuccess.map(
          (r) => checkAuthState(),
        );
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
        state = state.copyWith(
          isSubmitting: true,
          authFailureOrSuccessOption: none(),
        );
        final registerWithSuccessOrFailure =
            await _authFacade.registerWithEmailAndPassword(
          email: event.email,
          password: event.password,
          username: event.username,
        );
        registerWithSuccessOrFailure.fold(
          (l) => null,
          (success) {
            checkAuthState();
          },
        );

        state = state.copyWith(
          isSubmitting: false,
          authFailureOrSuccessOption: optionOf(registerWithSuccessOrFailure),
        );
      },
      signInWithEmailAndPasswordPressed: (event) async {
        state = state.copyWith(
          isSubmitting: true,
          authFailureOrSuccessOption: none(),
        );
        final successOrFailure = await _authFacade.signInWithEmailAndPassword(
          email: event.email,
          password: event.password,
        );
        state = state.copyWith(
          isSubmitting: false,
          authFailureOrSuccessOption: optionOf(successOrFailure),
        );

        successOrFailure.fold((l) => null, (success) => checkAuthState());
      },
    );
  }
}

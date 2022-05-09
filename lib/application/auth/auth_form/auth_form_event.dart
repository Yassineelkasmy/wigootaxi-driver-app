import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_form_event.freezed.dart';

@freezed
class AuthFormEvent with _$AuthFormEvent {
  const factory AuthFormEvent.signInWithGooglePresseed() =
      SignInWithGooglePressed;
  const factory AuthFormEvent.registerWithGooglePressed() =
      RegisterWithGooglePressed;
  const factory AuthFormEvent.registerWithEmailAndPasswordPressed(
    String email,
    String password,
    String phone,
    String username,
  ) = RegisterWithEmailAndPasswordPressed;
  const factory AuthFormEvent.signInWithFacebookPressed() =
      SignInWithFaceboolPressed;
  const factory AuthFormEvent.registerWithFacebookPressed() =
      RegisterWithFaceboolPressed;
  const factory AuthFormEvent.signOutPressed() = SignOutPressed;
}

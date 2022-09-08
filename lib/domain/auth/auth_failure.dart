import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_failure.freezed.dart';

@freezed
class AuthFailure with _$AuthFailure {
  const factory AuthFailure.cancelledByUser() = CancelledByUser;
  const factory AuthFailure.serverError() = ServerError;
  const factory AuthFailure.emailAlreadyInUse() = EmailAlreadyInUse;
  const factory AuthFailure.invalidCredentials() = InvalidCredentials;
  const factory AuthFailure.userDisabled() = UserDisabled;
  const factory AuthFailure.userNotVerified() = UserNotVerified;
  const factory AuthFailure.invalidPinCode() = InvalidPinCode;
  const factory AuthFailure.phoneAlreadyInUse() = PhoneAlreadyInUse;
  const factory AuthFailure.goolgeAccountNotRegistered() =
      GoolgeAccountNotRegistered;
}

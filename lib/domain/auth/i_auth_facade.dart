import 'package:dartz/dartz.dart';
import 'package:wigootaxidriver/domain/auth/auth_failure.dart';
import 'package:wigootaxidriver/domain/auth/user.dart';

abstract class IAuthFacade {
  Future<Option<User>> getSignedUser();
  Future<Either<AuthFailure, Unit>> signInWithGoogle();
  Future<Either<AuthFailure, Unit>> registerWithGoogle();
  Future<Either<AuthFailure, Unit>> signInWithFacebook();
  Future<Either<AuthFailure, Unit>> registerWithFacebook();
  Future<Either<AuthFailure, Unit>> sendPhoneVerification(String phoneNumber);
  Future<Either<AuthFailure, Unit>> verifyPhoneNumber(String code);
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    required String email,
    required String password,
  });
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    required String email,
    required String password,
  });

  Future<void> signOut();
}

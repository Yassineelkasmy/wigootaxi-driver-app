import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart' hide User;
import 'package:google_sign_in/google_sign_in.dart';
import 'package:wigootaxidriver/domain/auth/auth_failure.dart';
import 'package:wigootaxidriver/domain/auth/user.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';

class FireBaseAuthFacade {
  final FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;
  final FacebookAuth _facebookAuth;

  FireBaseAuthFacade(
    this._firebaseAuth,
    this._googleSignIn,
    this._facebookAuth,
  );

  @override
  Future<Option<User>> getSignedUser() async {
    final user = _firebaseAuth.currentUser;
    if (user == null) {
      return none();
    } else {
      return optionOf(
        User(
          uid: user.uid,
          email: user.email!,
          displayName: user.displayName,
          photoURL: user.photoURL,
        ),
      );
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithGoogle() async {
    try {
      final googleUser = await _googleSignIn.signIn();
      if (googleUser == null) {
        return left(const AuthFailure.cancelledByUser());
      }

      final authMethod = await checkAuthMethod(googleUser.email);
      print(authMethod);
      if (authMethod != SignInMethod.google) {
        return left(AuthFailure.invalidCredentials());
      }

      final googleAuthentication = await googleUser.authentication;

      final authCredential = GoogleAuthProvider.credential(
        idToken: googleAuthentication.idToken,
        accessToken: googleAuthentication.accessToken,
      );

      await _firebaseAuth.signInWithCredential(authCredential);
      return right(unit);
    } on FirebaseAuthException catch (_) {
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<void> signOut() async {
    Future.wait([
      _firebaseAuth.signOut(),
      _googleSignIn.signOut(),
    ]);
  }

  @override
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    required String email,
    required String password,
    required String username,
    required String phone,
  }) async {
    try {
      final creds = await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      if (creds.user != null) {
        await FirebaseFirestore.instance
            .collection('drivers')
            .doc(creds.user!.uid)
            .set(
          {
            'username': username,
            'email': email,
            'phone': phone,
            'isPhoneVerified': false,
            'ts': Timestamp.now(),
          },
        );
      }
      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'email_already_in_use') {
        return left(const AuthFailure.emailAlreadyInUse());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);
      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'wrong-password' || e.code == 'user-not-found') {
        return left(const AuthFailure.invalidCredentials());
      }
      if (e.code == 'user-disabled') {
        return left(const AuthFailure.userDisabled());
      }
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> registerWithGoogle() async {
    try {
      final googleUser = await _googleSignIn.signIn();
      if (googleUser == null) {
        return left(const AuthFailure.cancelledByUser());
      }

      final googleAuthentication = await googleUser.authentication;

      final authCredential = GoogleAuthProvider.credential(
        idToken: googleAuthentication.idToken,
        accessToken: googleAuthentication.accessToken,
      );

      await _firebaseAuth.signInWithCredential(authCredential);
      return right(unit);
    } on FirebaseAuthException catch (_) {
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> sendPhoneVerification(String phoneNumber) {
    // TODO: implement sendPhoneVerification
    throw UnimplementedError();
  }

  @override
  Future<Either<AuthFailure, Unit>> verifyPhoneNumber(String code) {
    // TODO: implement verifyPhoneNumber
    throw UnimplementedError();
  }

  Future<SignInMethod> checkAuthMethod(String email) async {
    final methods = await _firebaseAuth.fetchSignInMethodsForEmail(email);
    if (methods.isEmpty) {
      return SignInMethod.unknown;
    }
    if (methods[0].contains('google')) {
      return SignInMethod.google;
    } else if (methods[0].contains('facebook')) {
      return SignInMethod.facebook;
    } else {
      return SignInMethod.email;
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> registerWithFacebook() async {
    try {
      final LoginResult result = await _facebookAuth.login(
        permissions: ["public_profile", "email"],
      );

      if (result.status == LoginStatus.success) {
        final Map<String, dynamic> facebookUser =
            await _facebookAuth.getUserData(
          fields: "email, name",
        );

        print(facebookUser);

        AccessToken? _token = result.accessToken;

        final facebookCredentials =
            FacebookAuthProvider.credential(_token!.token);
      }
      return right(unit);
    } on FirebaseAuthException catch (_) {
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithFacebook() {
    // TODO: implement signInWithFacebook
    throw UnimplementedError();
  }
}

enum SignInMethod {
  google,
  facebook,
  email,
  unknown,
}

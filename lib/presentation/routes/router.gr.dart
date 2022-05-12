// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i13;
import 'package:flutter/material.dart' as _i14;

import '../auth/login_page.dart' as _i7;
import '../auth/phone_auth_page.dart' as _i6;
import '../auth/phone_verification_page.dart' as _i5;
import '../auth/signup_page.dart' as _i9;
import '../home/help/send_message_page.dart' as _i12;
import '../home/home_page.dart' as _i10;
import '../home/pick_location/activate_location_page.dart' as _i11;
import '../intro/intro_page.dart' as _i8;
import '../splash/splash_page.dart' as _i1;
import '../submission/submission_page.dart' as _i2;
import '../submission/submission_success_page.dart' as _i3;
import '../submission/widgets/upload_field.dart' as _i4;

class AppRouter extends _i13.RootStackRouter {
  AppRouter([_i14.GlobalKey<_i14.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i13.PageFactory> pagesMap = {
    SplashPageRoute.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SplashPage());
    },
    SubmissionPageRoute.name: (routeData) {
      final args = routeData.argsAs<SubmissionPageRouteArgs>(
          orElse: () => const SubmissionPageRouteArgs());
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData, child: _i2.SubmissionPage(key: args.key));
    },
    SubmissionSuccessPageRoute.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.SubmissionSuccessPage());
    },
    DocumentImagePageRoute.name: (routeData) {
      final args = routeData.argsAs<DocumentImagePageRouteArgs>();
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i4.DocumentImagePage(key: args.key, image: args.image));
    },
    PhoneVerificationPageRoute.name: (routeData) {
      final args = routeData.argsAs<PhoneVerificationPageRouteArgs>();
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i5.PhoneVerificationPage(
              key: args.key,
              phoneNumber: args.phoneNumber,
              verificationId: args.verificationId));
    },
    PhoneAuthPageRoute.name: (routeData) {
      final args = routeData.argsAs<PhoneAuthPageRouteArgs>();
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData,
          child:
              _i6.PhoneAuthPage(key: args.key, phoneNumber: args.phoneNumber));
    },
    LoginPageRoute.name: (routeData) {
      final args = routeData.argsAs<LoginPageRouteArgs>(
          orElse: () => const LoginPageRouteArgs());
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData, child: _i7.LoginPage(key: args.key));
    },
    IntroPageRoute.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.IntroPage());
    },
    SignUpPageRoute.name: (routeData) {
      final args = routeData.argsAs<SignUpPageRouteArgs>(
          orElse: () => const SignUpPageRouteArgs());
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData, child: _i9.SignUpPage(key: args.key));
    },
    HomePageRoute.name: (routeData) {
      final args = routeData.argsAs<HomePageRouteArgs>(
          orElse: () => const HomePageRouteArgs());
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData, child: _i10.HomePage(key: args.key));
    },
    ActivateLocationPageRoute.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i11.ActivateLocationPage());
    },
    SendMessagePageRoute.name: (routeData) {
      final args = routeData.argsAs<SendMessagePageRouteArgs>(
          orElse: () => const SendMessagePageRouteArgs());
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData, child: _i12.SendMessagePage(key: args.key));
    }
  };

  @override
  List<_i13.RouteConfig> get routes => [
        _i13.RouteConfig(SplashPageRoute.name, path: '/'),
        _i13.RouteConfig(SubmissionPageRoute.name, path: '/submission-page'),
        _i13.RouteConfig(SubmissionSuccessPageRoute.name,
            path: '/submission-success-page'),
        _i13.RouteConfig(DocumentImagePageRoute.name,
            path: '/document-image-page'),
        _i13.RouteConfig(PhoneVerificationPageRoute.name,
            path: '/phone-verification-page'),
        _i13.RouteConfig(PhoneAuthPageRoute.name, path: '/phone-auth-page'),
        _i13.RouteConfig(LoginPageRoute.name, path: '/login-page'),
        _i13.RouteConfig(IntroPageRoute.name, path: '/intro-page'),
        _i13.RouteConfig(SignUpPageRoute.name, path: '/sign-up-page'),
        _i13.RouteConfig(HomePageRoute.name, path: '/home-page'),
        _i13.RouteConfig(ActivateLocationPageRoute.name,
            path: '/activate-location-page'),
        _i13.RouteConfig(SendMessagePageRoute.name, path: '/send-message-page')
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashPageRoute extends _i13.PageRouteInfo<void> {
  const SplashPageRoute() : super(SplashPageRoute.name, path: '/');

  static const String name = 'SplashPageRoute';
}

/// generated route for
/// [_i2.SubmissionPage]
class SubmissionPageRoute extends _i13.PageRouteInfo<SubmissionPageRouteArgs> {
  SubmissionPageRoute({_i14.Key? key})
      : super(SubmissionPageRoute.name,
            path: '/submission-page', args: SubmissionPageRouteArgs(key: key));

  static const String name = 'SubmissionPageRoute';
}

class SubmissionPageRouteArgs {
  const SubmissionPageRouteArgs({this.key});

  final _i14.Key? key;

  @override
  String toString() {
    return 'SubmissionPageRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i3.SubmissionSuccessPage]
class SubmissionSuccessPageRoute extends _i13.PageRouteInfo<void> {
  const SubmissionSuccessPageRoute()
      : super(SubmissionSuccessPageRoute.name,
            path: '/submission-success-page');

  static const String name = 'SubmissionSuccessPageRoute';
}

/// generated route for
/// [_i4.DocumentImagePage]
class DocumentImagePageRoute
    extends _i13.PageRouteInfo<DocumentImagePageRouteArgs> {
  DocumentImagePageRoute({_i14.Key? key, required String image})
      : super(DocumentImagePageRoute.name,
            path: '/document-image-page',
            args: DocumentImagePageRouteArgs(key: key, image: image));

  static const String name = 'DocumentImagePageRoute';
}

class DocumentImagePageRouteArgs {
  const DocumentImagePageRouteArgs({this.key, required this.image});

  final _i14.Key? key;

  final String image;

  @override
  String toString() {
    return 'DocumentImagePageRouteArgs{key: $key, image: $image}';
  }
}

/// generated route for
/// [_i5.PhoneVerificationPage]
class PhoneVerificationPageRoute
    extends _i13.PageRouteInfo<PhoneVerificationPageRouteArgs> {
  PhoneVerificationPageRoute(
      {_i14.Key? key,
      required String phoneNumber,
      required String verificationId})
      : super(PhoneVerificationPageRoute.name,
            path: '/phone-verification-page',
            args: PhoneVerificationPageRouteArgs(
                key: key,
                phoneNumber: phoneNumber,
                verificationId: verificationId));

  static const String name = 'PhoneVerificationPageRoute';
}

class PhoneVerificationPageRouteArgs {
  const PhoneVerificationPageRouteArgs(
      {this.key, required this.phoneNumber, required this.verificationId});

  final _i14.Key? key;

  final String phoneNumber;

  final String verificationId;

  @override
  String toString() {
    return 'PhoneVerificationPageRouteArgs{key: $key, phoneNumber: $phoneNumber, verificationId: $verificationId}';
  }
}

/// generated route for
/// [_i6.PhoneAuthPage]
class PhoneAuthPageRoute extends _i13.PageRouteInfo<PhoneAuthPageRouteArgs> {
  PhoneAuthPageRoute({_i14.Key? key, required String phoneNumber})
      : super(PhoneAuthPageRoute.name,
            path: '/phone-auth-page',
            args: PhoneAuthPageRouteArgs(key: key, phoneNumber: phoneNumber));

  static const String name = 'PhoneAuthPageRoute';
}

class PhoneAuthPageRouteArgs {
  const PhoneAuthPageRouteArgs({this.key, required this.phoneNumber});

  final _i14.Key? key;

  final String phoneNumber;

  @override
  String toString() {
    return 'PhoneAuthPageRouteArgs{key: $key, phoneNumber: $phoneNumber}';
  }
}

/// generated route for
/// [_i7.LoginPage]
class LoginPageRoute extends _i13.PageRouteInfo<LoginPageRouteArgs> {
  LoginPageRoute({_i14.Key? key})
      : super(LoginPageRoute.name,
            path: '/login-page', args: LoginPageRouteArgs(key: key));

  static const String name = 'LoginPageRoute';
}

class LoginPageRouteArgs {
  const LoginPageRouteArgs({this.key});

  final _i14.Key? key;

  @override
  String toString() {
    return 'LoginPageRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i8.IntroPage]
class IntroPageRoute extends _i13.PageRouteInfo<void> {
  const IntroPageRoute() : super(IntroPageRoute.name, path: '/intro-page');

  static const String name = 'IntroPageRoute';
}

/// generated route for
/// [_i9.SignUpPage]
class SignUpPageRoute extends _i13.PageRouteInfo<SignUpPageRouteArgs> {
  SignUpPageRoute({_i14.Key? key})
      : super(SignUpPageRoute.name,
            path: '/sign-up-page', args: SignUpPageRouteArgs(key: key));

  static const String name = 'SignUpPageRoute';
}

class SignUpPageRouteArgs {
  const SignUpPageRouteArgs({this.key});

  final _i14.Key? key;

  @override
  String toString() {
    return 'SignUpPageRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i10.HomePage]
class HomePageRoute extends _i13.PageRouteInfo<HomePageRouteArgs> {
  HomePageRoute({_i14.Key? key})
      : super(HomePageRoute.name,
            path: '/home-page', args: HomePageRouteArgs(key: key));

  static const String name = 'HomePageRoute';
}

class HomePageRouteArgs {
  const HomePageRouteArgs({this.key});

  final _i14.Key? key;

  @override
  String toString() {
    return 'HomePageRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i11.ActivateLocationPage]
class ActivateLocationPageRoute extends _i13.PageRouteInfo<void> {
  const ActivateLocationPageRoute()
      : super(ActivateLocationPageRoute.name, path: '/activate-location-page');

  static const String name = 'ActivateLocationPageRoute';
}

/// generated route for
/// [_i12.SendMessagePage]
class SendMessagePageRoute
    extends _i13.PageRouteInfo<SendMessagePageRouteArgs> {
  SendMessagePageRoute({_i14.Key? key})
      : super(SendMessagePageRoute.name,
            path: '/send-message-page',
            args: SendMessagePageRouteArgs(key: key));

  static const String name = 'SendMessagePageRoute';
}

class SendMessagePageRouteArgs {
  const SendMessagePageRouteArgs({this.key});

  final _i14.Key? key;

  @override
  String toString() {
    return 'SendMessagePageRouteArgs{key: $key}';
  }
}

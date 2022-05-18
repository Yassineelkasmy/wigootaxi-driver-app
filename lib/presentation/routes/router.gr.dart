// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i12;
import 'package:flutter/material.dart' as _i13;

import '../auth/login_page.dart' as _i6;
import '../auth/phone_auth_page.dart' as _i7;
import '../auth/phone_verification_page.dart' as _i5;
import '../home/help/send_message_page.dart' as _i11;
import '../home/home_page.dart' as _i9;
import '../home/pick_location/activate_location_page.dart' as _i10;
import '../intro/intro_page.dart' as _i8;
import '../splash/splash_page.dart' as _i1;
import '../submission/submission_page.dart' as _i2;
import '../submission/submission_success_page.dart' as _i3;
import '../submission/widgets/upload_field.dart' as _i4;

class AppRouter extends _i12.RootStackRouter {
  AppRouter([_i13.GlobalKey<_i13.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i12.PageFactory> pagesMap = {
    SplashPageRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SplashPage());
    },
    SubmissionPageRoute.name: (routeData) {
      final args = routeData.argsAs<SubmissionPageRouteArgs>(
          orElse: () => const SubmissionPageRouteArgs());
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData, child: _i2.SubmissionPage(key: args.key));
    },
    SubmissionSuccessPageRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.SubmissionSuccessPage());
    },
    DocumentImagePageRoute.name: (routeData) {
      final args = routeData.argsAs<DocumentImagePageRouteArgs>();
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i4.DocumentImagePage(key: args.key, image: args.image));
    },
    PhoneVerificationPageRoute.name: (routeData) {
      final args = routeData.argsAs<PhoneVerificationPageRouteArgs>();
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i5.PhoneVerificationPage(
              key: args.key,
              phoneNumber: args.phoneNumber,
              phone: args.phone,
              verificationId: args.verificationId));
    },
    LoginPageRoute.name: (routeData) {
      final args = routeData.argsAs<LoginPageRouteArgs>(
          orElse: () => const LoginPageRouteArgs());
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData, child: _i6.LoginPage(key: args.key));
    },
    PhoneAuthPageRoute.name: (routeData) {
      final args = routeData.argsAs<PhoneAuthPageRouteArgs>(
          orElse: () => const PhoneAuthPageRouteArgs());
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData, child: _i7.PhoneAuthPage(key: args.key));
    },
    IntroPageRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.IntroPage());
    },
    HomePageRoute.name: (routeData) {
      final args = routeData.argsAs<HomePageRouteArgs>(
          orElse: () => const HomePageRouteArgs());
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData, child: _i9.HomePage(key: args.key));
    },
    ActivateLocationPageRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i10.ActivateLocationPage());
    },
    SendMessagePageRoute.name: (routeData) {
      final args = routeData.argsAs<SendMessagePageRouteArgs>(
          orElse: () => const SendMessagePageRouteArgs());
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData, child: _i11.SendMessagePage(key: args.key));
    }
  };

  @override
  List<_i12.RouteConfig> get routes => [
        _i12.RouteConfig(SplashPageRoute.name, path: '/'),
        _i12.RouteConfig(SubmissionPageRoute.name, path: '/submission-page'),
        _i12.RouteConfig(SubmissionSuccessPageRoute.name,
            path: '/submission-success-page'),
        _i12.RouteConfig(DocumentImagePageRoute.name,
            path: '/document-image-page'),
        _i12.RouteConfig(PhoneVerificationPageRoute.name,
            path: '/phone-verification-page'),
        _i12.RouteConfig(LoginPageRoute.name, path: '/login-page'),
        _i12.RouteConfig(PhoneAuthPageRoute.name, path: '/phone-auth-page'),
        _i12.RouteConfig(IntroPageRoute.name, path: '/intro-page'),
        _i12.RouteConfig(HomePageRoute.name, path: '/home-page'),
        _i12.RouteConfig(ActivateLocationPageRoute.name,
            path: '/activate-location-page'),
        _i12.RouteConfig(SendMessagePageRoute.name, path: '/send-message-page')
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashPageRoute extends _i12.PageRouteInfo<void> {
  const SplashPageRoute() : super(SplashPageRoute.name, path: '/');

  static const String name = 'SplashPageRoute';
}

/// generated route for
/// [_i2.SubmissionPage]
class SubmissionPageRoute extends _i12.PageRouteInfo<SubmissionPageRouteArgs> {
  SubmissionPageRoute({_i13.Key? key})
      : super(SubmissionPageRoute.name,
            path: '/submission-page', args: SubmissionPageRouteArgs(key: key));

  static const String name = 'SubmissionPageRoute';
}

class SubmissionPageRouteArgs {
  const SubmissionPageRouteArgs({this.key});

  final _i13.Key? key;

  @override
  String toString() {
    return 'SubmissionPageRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i3.SubmissionSuccessPage]
class SubmissionSuccessPageRoute extends _i12.PageRouteInfo<void> {
  const SubmissionSuccessPageRoute()
      : super(SubmissionSuccessPageRoute.name,
            path: '/submission-success-page');

  static const String name = 'SubmissionSuccessPageRoute';
}

/// generated route for
/// [_i4.DocumentImagePage]
class DocumentImagePageRoute
    extends _i12.PageRouteInfo<DocumentImagePageRouteArgs> {
  DocumentImagePageRoute({_i13.Key? key, required String image})
      : super(DocumentImagePageRoute.name,
            path: '/document-image-page',
            args: DocumentImagePageRouteArgs(key: key, image: image));

  static const String name = 'DocumentImagePageRoute';
}

class DocumentImagePageRouteArgs {
  const DocumentImagePageRouteArgs({this.key, required this.image});

  final _i13.Key? key;

  final String image;

  @override
  String toString() {
    return 'DocumentImagePageRouteArgs{key: $key, image: $image}';
  }
}

/// generated route for
/// [_i5.PhoneVerificationPage]
class PhoneVerificationPageRoute
    extends _i12.PageRouteInfo<PhoneVerificationPageRouteArgs> {
  PhoneVerificationPageRoute(
      {_i13.Key? key,
      required String phoneNumber,
      required String phone,
      required String verificationId})
      : super(PhoneVerificationPageRoute.name,
            path: '/phone-verification-page',
            args: PhoneVerificationPageRouteArgs(
                key: key,
                phoneNumber: phoneNumber,
                phone: phone,
                verificationId: verificationId));

  static const String name = 'PhoneVerificationPageRoute';
}

class PhoneVerificationPageRouteArgs {
  const PhoneVerificationPageRouteArgs(
      {this.key,
      required this.phoneNumber,
      required this.phone,
      required this.verificationId});

  final _i13.Key? key;

  final String phoneNumber;

  final String phone;

  final String verificationId;

  @override
  String toString() {
    return 'PhoneVerificationPageRouteArgs{key: $key, phoneNumber: $phoneNumber, phone: $phone, verificationId: $verificationId}';
  }
}

/// generated route for
/// [_i6.LoginPage]
class LoginPageRoute extends _i12.PageRouteInfo<LoginPageRouteArgs> {
  LoginPageRoute({_i13.Key? key})
      : super(LoginPageRoute.name,
            path: '/login-page', args: LoginPageRouteArgs(key: key));

  static const String name = 'LoginPageRoute';
}

class LoginPageRouteArgs {
  const LoginPageRouteArgs({this.key});

  final _i13.Key? key;

  @override
  String toString() {
    return 'LoginPageRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i7.PhoneAuthPage]
class PhoneAuthPageRoute extends _i12.PageRouteInfo<PhoneAuthPageRouteArgs> {
  PhoneAuthPageRoute({_i13.Key? key})
      : super(PhoneAuthPageRoute.name,
            path: '/phone-auth-page', args: PhoneAuthPageRouteArgs(key: key));

  static const String name = 'PhoneAuthPageRoute';
}

class PhoneAuthPageRouteArgs {
  const PhoneAuthPageRouteArgs({this.key});

  final _i13.Key? key;

  @override
  String toString() {
    return 'PhoneAuthPageRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i8.IntroPage]
class IntroPageRoute extends _i12.PageRouteInfo<void> {
  const IntroPageRoute() : super(IntroPageRoute.name, path: '/intro-page');

  static const String name = 'IntroPageRoute';
}

/// generated route for
/// [_i9.HomePage]
class HomePageRoute extends _i12.PageRouteInfo<HomePageRouteArgs> {
  HomePageRoute({_i13.Key? key})
      : super(HomePageRoute.name,
            path: '/home-page', args: HomePageRouteArgs(key: key));

  static const String name = 'HomePageRoute';
}

class HomePageRouteArgs {
  const HomePageRouteArgs({this.key});

  final _i13.Key? key;

  @override
  String toString() {
    return 'HomePageRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i10.ActivateLocationPage]
class ActivateLocationPageRoute extends _i12.PageRouteInfo<void> {
  const ActivateLocationPageRoute()
      : super(ActivateLocationPageRoute.name, path: '/activate-location-page');

  static const String name = 'ActivateLocationPageRoute';
}

/// generated route for
/// [_i11.SendMessagePage]
class SendMessagePageRoute
    extends _i12.PageRouteInfo<SendMessagePageRouteArgs> {
  SendMessagePageRoute({_i13.Key? key})
      : super(SendMessagePageRoute.name,
            path: '/send-message-page',
            args: SendMessagePageRouteArgs(key: key));

  static const String name = 'SendMessagePageRoute';
}

class SendMessagePageRouteArgs {
  const SendMessagePageRouteArgs({this.key});

  final _i13.Key? key;

  @override
  String toString() {
    return 'SendMessagePageRouteArgs{key: $key}';
  }
}

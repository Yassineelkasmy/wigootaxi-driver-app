// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i11;
import 'package:flutter/material.dart' as _i12;

import '../auth/login_page.dart' as _i5;
import '../auth/phone_auth_page.dart' as _i4;
import '../auth/phone_verification_page.dart' as _i3;
import '../auth/signup_page.dart' as _i7;
import '../home/help/send_message_page.dart' as _i10;
import '../home/home_page.dart' as _i8;
import '../home/pick_location/activate_location_page.dart' as _i9;
import '../intro/intro_page.dart' as _i6;
import '../splash/splash_page.dart' as _i1;
import '../submission/submission_page.dart' as _i2;

class AppRouter extends _i11.RootStackRouter {
  AppRouter([_i12.GlobalKey<_i12.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i11.PageFactory> pagesMap = {
    SplashPageRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SplashPage());
    },
    SubmissionPageRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.SubmissionPage());
    },
    PhoneVerificationPageRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.PhoneVerificationPage());
    },
    PhoneAuthPageRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.PhoneAuthPage());
    },
    LoginPageRoute.name: (routeData) {
      final args = routeData.argsAs<LoginPageRouteArgs>(
          orElse: () => const LoginPageRouteArgs());
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: _i5.LoginPage(key: args.key));
    },
    IntroPageRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.IntroPage());
    },
    SignUpPageRoute.name: (routeData) {
      final args = routeData.argsAs<SignUpPageRouteArgs>(
          orElse: () => const SignUpPageRouteArgs());
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: _i7.SignUpPage(key: args.key));
    },
    HomePageRoute.name: (routeData) {
      final args = routeData.argsAs<HomePageRouteArgs>(
          orElse: () => const HomePageRouteArgs());
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: _i8.HomePage(key: args.key));
    },
    ActivateLocationPageRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i9.ActivateLocationPage());
    },
    SendMessagePageRoute.name: (routeData) {
      final args = routeData.argsAs<SendMessagePageRouteArgs>(
          orElse: () => const SendMessagePageRouteArgs());
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: _i10.SendMessagePage(key: args.key));
    }
  };

  @override
  List<_i11.RouteConfig> get routes => [
        _i11.RouteConfig(SplashPageRoute.name, path: '/'),
        _i11.RouteConfig(SubmissionPageRoute.name, path: '/submission-page'),
        _i11.RouteConfig(PhoneVerificationPageRoute.name,
            path: '/phone-verification-page'),
        _i11.RouteConfig(PhoneAuthPageRoute.name, path: '/phone-auth-page'),
        _i11.RouteConfig(LoginPageRoute.name, path: '/login-page'),
        _i11.RouteConfig(IntroPageRoute.name, path: '/intro-page'),
        _i11.RouteConfig(SignUpPageRoute.name, path: '/sign-up-page'),
        _i11.RouteConfig(HomePageRoute.name, path: '/home-page'),
        _i11.RouteConfig(ActivateLocationPageRoute.name,
            path: '/activate-location-page'),
        _i11.RouteConfig(SendMessagePageRoute.name, path: '/send-message-page')
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashPageRoute extends _i11.PageRouteInfo<void> {
  const SplashPageRoute() : super(SplashPageRoute.name, path: '/');

  static const String name = 'SplashPageRoute';
}

/// generated route for
/// [_i2.SubmissionPage]
class SubmissionPageRoute extends _i11.PageRouteInfo<void> {
  const SubmissionPageRoute()
      : super(SubmissionPageRoute.name, path: '/submission-page');

  static const String name = 'SubmissionPageRoute';
}

/// generated route for
/// [_i3.PhoneVerificationPage]
class PhoneVerificationPageRoute extends _i11.PageRouteInfo<void> {
  const PhoneVerificationPageRoute()
      : super(PhoneVerificationPageRoute.name,
            path: '/phone-verification-page');

  static const String name = 'PhoneVerificationPageRoute';
}

/// generated route for
/// [_i4.PhoneAuthPage]
class PhoneAuthPageRoute extends _i11.PageRouteInfo<void> {
  const PhoneAuthPageRoute()
      : super(PhoneAuthPageRoute.name, path: '/phone-auth-page');

  static const String name = 'PhoneAuthPageRoute';
}

/// generated route for
/// [_i5.LoginPage]
class LoginPageRoute extends _i11.PageRouteInfo<LoginPageRouteArgs> {
  LoginPageRoute({_i12.Key? key})
      : super(LoginPageRoute.name,
            path: '/login-page', args: LoginPageRouteArgs(key: key));

  static const String name = 'LoginPageRoute';
}

class LoginPageRouteArgs {
  const LoginPageRouteArgs({this.key});

  final _i12.Key? key;

  @override
  String toString() {
    return 'LoginPageRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i6.IntroPage]
class IntroPageRoute extends _i11.PageRouteInfo<void> {
  const IntroPageRoute() : super(IntroPageRoute.name, path: '/intro-page');

  static const String name = 'IntroPageRoute';
}

/// generated route for
/// [_i7.SignUpPage]
class SignUpPageRoute extends _i11.PageRouteInfo<SignUpPageRouteArgs> {
  SignUpPageRoute({_i12.Key? key})
      : super(SignUpPageRoute.name,
            path: '/sign-up-page', args: SignUpPageRouteArgs(key: key));

  static const String name = 'SignUpPageRoute';
}

class SignUpPageRouteArgs {
  const SignUpPageRouteArgs({this.key});

  final _i12.Key? key;

  @override
  String toString() {
    return 'SignUpPageRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i8.HomePage]
class HomePageRoute extends _i11.PageRouteInfo<HomePageRouteArgs> {
  HomePageRoute({_i12.Key? key})
      : super(HomePageRoute.name,
            path: '/home-page', args: HomePageRouteArgs(key: key));

  static const String name = 'HomePageRoute';
}

class HomePageRouteArgs {
  const HomePageRouteArgs({this.key});

  final _i12.Key? key;

  @override
  String toString() {
    return 'HomePageRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i9.ActivateLocationPage]
class ActivateLocationPageRoute extends _i11.PageRouteInfo<void> {
  const ActivateLocationPageRoute()
      : super(ActivateLocationPageRoute.name, path: '/activate-location-page');

  static const String name = 'ActivateLocationPageRoute';
}

/// generated route for
/// [_i10.SendMessagePage]
class SendMessagePageRoute
    extends _i11.PageRouteInfo<SendMessagePageRouteArgs> {
  SendMessagePageRoute({_i12.Key? key})
      : super(SendMessagePageRoute.name,
            path: '/send-message-page',
            args: SendMessagePageRouteArgs(key: key));

  static const String name = 'SendMessagePageRoute';
}

class SendMessagePageRouteArgs {
  const SendMessagePageRouteArgs({this.key});

  final _i12.Key? key;

  @override
  String toString() {
    return 'SendMessagePageRouteArgs{key: $key}';
  }
}

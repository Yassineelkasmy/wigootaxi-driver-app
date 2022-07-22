// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i15;
import 'package:flutter/material.dart' as _i16;

import '../../driver/domain/driver_record.dart' as _i17;
import '../../profile/ui/portail_captain.dart' as _i13;
import '../../ride/ui/activate_location_or_ride_map_page.dart' as _i11;
import '../../ride/ui/ride_root_page.dart' as _i14;
import '../auth/login_page.dart' as _i6;
import '../auth/phone_auth_page.dart' as _i7;
import '../auth/phone_verification_page.dart' as _i5;
import '../home/help/send_message_page.dart' as _i12;
import '../home/home_page.dart' as _i9;
import '../home/pick_location/activate_location_page.dart' as _i10;
import '../intro/intro_page.dart' as _i8;
import '../splash/splash_page.dart' as _i1;
import '../submission/submission_page.dart' as _i2;
import '../submission/submission_success_page.dart' as _i3;
import '../submission/widgets/upload_field.dart' as _i4;

class AppRouter extends _i15.RootStackRouter {
  AppRouter([_i16.GlobalKey<_i16.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i15.PageFactory> pagesMap = {
    SplashPageRoute.name: (routeData) {
      return _i15.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SplashPage());
    },
    SubmissionPageRoute.name: (routeData) {
      final args = routeData.argsAs<SubmissionPageRouteArgs>(
          orElse: () => const SubmissionPageRouteArgs());
      return _i15.MaterialPageX<dynamic>(
          routeData: routeData, child: _i2.SubmissionPage(key: args.key));
    },
    SubmissionSuccessPageRoute.name: (routeData) {
      return _i15.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.SubmissionSuccessPage());
    },
    DocumentImagePageRoute.name: (routeData) {
      final args = routeData.argsAs<DocumentImagePageRouteArgs>();
      return _i15.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i4.DocumentImagePage(key: args.key, image: args.image));
    },
    PhoneVerificationPageRoute.name: (routeData) {
      final args = routeData.argsAs<PhoneVerificationPageRouteArgs>();
      return _i15.MaterialPageX<dynamic>(
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
      return _i15.MaterialPageX<dynamic>(
          routeData: routeData, child: _i6.LoginPage(key: args.key));
    },
    PhoneAuthPageRoute.name: (routeData) {
      final args = routeData.argsAs<PhoneAuthPageRouteArgs>(
          orElse: () => const PhoneAuthPageRouteArgs());
      return _i15.MaterialPageX<dynamic>(
          routeData: routeData, child: _i7.PhoneAuthPage(key: args.key));
    },
    IntroPageRoute.name: (routeData) {
      return _i15.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.IntroPage());
    },
    HomePageRoute.name: (routeData) {
      final args = routeData.argsAs<HomePageRouteArgs>(
          orElse: () => const HomePageRouteArgs());
      return _i15.MaterialPageX<dynamic>(
          routeData: routeData, child: _i9.HomePage(key: args.key));
    },
    ActivateLocationOrMapPageRoute.name: (routeData) {
      final args = routeData.argsAs<ActivateLocationOrMapPageRouteArgs>(
          orElse: () => const ActivateLocationOrMapPageRouteArgs());
      return _i15.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i10.ActivateLocationOrMapPage(key: args.key));
    },
    ActivateLocationOrRideMapPageRoute.name: (routeData) {
      final args = routeData.argsAs<ActivateLocationOrRideMapPageRouteArgs>();
      return _i15.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i11.ActivateLocationOrRideMapPage(
              key: args.key, userRecord: args.userRecord));
    },
    SendMessagePageRoute.name: (routeData) {
      final args = routeData.argsAs<SendMessagePageRouteArgs>(
          orElse: () => const SendMessagePageRouteArgs());
      return _i15.MaterialPageX<dynamic>(
          routeData: routeData, child: _i12.SendMessagePage(key: args.key));
    },
    PortailCaptainRoute.name: (routeData) {
      return _i15.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i13.PortailCaptain());
    },
    RideRootPageRoute.name: (routeData) {
      final args = routeData.argsAs<RideRootPageRouteArgs>();
      return _i15.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i14.RideRootPage(key: args.key, userRecord: args.userRecord));
    }
  };

  @override
  List<_i15.RouteConfig> get routes => [
        _i15.RouteConfig(SplashPageRoute.name, path: '/'),
        _i15.RouteConfig(SubmissionPageRoute.name, path: '/submission-page'),
        _i15.RouteConfig(SubmissionSuccessPageRoute.name,
            path: '/submission-success-page'),
        _i15.RouteConfig(DocumentImagePageRoute.name,
            path: '/document-image-page'),
        _i15.RouteConfig(PhoneVerificationPageRoute.name,
            path: '/phone-verification-page'),
        _i15.RouteConfig(LoginPageRoute.name, path: '/login-page'),
        _i15.RouteConfig(PhoneAuthPageRoute.name, path: '/phone-auth-page'),
        _i15.RouteConfig(IntroPageRoute.name, path: '/intro-page'),
        _i15.RouteConfig(HomePageRoute.name, path: '/home-page'),
        _i15.RouteConfig(ActivateLocationOrMapPageRoute.name,
            path: '/activate-location-or-map-page'),
        _i15.RouteConfig(ActivateLocationOrRideMapPageRoute.name,
            path: '/activate-location-or-ride-map-page'),
        _i15.RouteConfig(SendMessagePageRoute.name, path: '/send-message-page'),
        _i15.RouteConfig(PortailCaptainRoute.name, path: '/portail-captain'),
        _i15.RouteConfig(RideRootPageRoute.name, path: '/ride-root-page')
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashPageRoute extends _i15.PageRouteInfo<void> {
  const SplashPageRoute() : super(SplashPageRoute.name, path: '/');

  static const String name = 'SplashPageRoute';
}

/// generated route for
/// [_i2.SubmissionPage]
class SubmissionPageRoute extends _i15.PageRouteInfo<SubmissionPageRouteArgs> {
  SubmissionPageRoute({_i16.Key? key})
      : super(SubmissionPageRoute.name,
            path: '/submission-page', args: SubmissionPageRouteArgs(key: key));

  static const String name = 'SubmissionPageRoute';
}

class SubmissionPageRouteArgs {
  const SubmissionPageRouteArgs({this.key});

  final _i16.Key? key;

  @override
  String toString() {
    return 'SubmissionPageRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i3.SubmissionSuccessPage]
class SubmissionSuccessPageRoute extends _i15.PageRouteInfo<void> {
  const SubmissionSuccessPageRoute()
      : super(SubmissionSuccessPageRoute.name,
            path: '/submission-success-page');

  static const String name = 'SubmissionSuccessPageRoute';
}

/// generated route for
/// [_i4.DocumentImagePage]
class DocumentImagePageRoute
    extends _i15.PageRouteInfo<DocumentImagePageRouteArgs> {
  DocumentImagePageRoute({_i16.Key? key, required String image})
      : super(DocumentImagePageRoute.name,
            path: '/document-image-page',
            args: DocumentImagePageRouteArgs(key: key, image: image));

  static const String name = 'DocumentImagePageRoute';
}

class DocumentImagePageRouteArgs {
  const DocumentImagePageRouteArgs({this.key, required this.image});

  final _i16.Key? key;

  final String image;

  @override
  String toString() {
    return 'DocumentImagePageRouteArgs{key: $key, image: $image}';
  }
}

/// generated route for
/// [_i5.PhoneVerificationPage]
class PhoneVerificationPageRoute
    extends _i15.PageRouteInfo<PhoneVerificationPageRouteArgs> {
  PhoneVerificationPageRoute(
      {_i16.Key? key,
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

  final _i16.Key? key;

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
class LoginPageRoute extends _i15.PageRouteInfo<LoginPageRouteArgs> {
  LoginPageRoute({_i16.Key? key})
      : super(LoginPageRoute.name,
            path: '/login-page', args: LoginPageRouteArgs(key: key));

  static const String name = 'LoginPageRoute';
}

class LoginPageRouteArgs {
  const LoginPageRouteArgs({this.key});

  final _i16.Key? key;

  @override
  String toString() {
    return 'LoginPageRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i7.PhoneAuthPage]
class PhoneAuthPageRoute extends _i15.PageRouteInfo<PhoneAuthPageRouteArgs> {
  PhoneAuthPageRoute({_i16.Key? key})
      : super(PhoneAuthPageRoute.name,
            path: '/phone-auth-page', args: PhoneAuthPageRouteArgs(key: key));

  static const String name = 'PhoneAuthPageRoute';
}

class PhoneAuthPageRouteArgs {
  const PhoneAuthPageRouteArgs({this.key});

  final _i16.Key? key;

  @override
  String toString() {
    return 'PhoneAuthPageRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i8.IntroPage]
class IntroPageRoute extends _i15.PageRouteInfo<void> {
  const IntroPageRoute() : super(IntroPageRoute.name, path: '/intro-page');

  static const String name = 'IntroPageRoute';
}

/// generated route for
/// [_i9.HomePage]
class HomePageRoute extends _i15.PageRouteInfo<HomePageRouteArgs> {
  HomePageRoute({_i16.Key? key})
      : super(HomePageRoute.name,
            path: '/home-page', args: HomePageRouteArgs(key: key));

  static const String name = 'HomePageRoute';
}

class HomePageRouteArgs {
  const HomePageRouteArgs({this.key});

  final _i16.Key? key;

  @override
  String toString() {
    return 'HomePageRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i10.ActivateLocationOrMapPage]
class ActivateLocationOrMapPageRoute
    extends _i15.PageRouteInfo<ActivateLocationOrMapPageRouteArgs> {
  ActivateLocationOrMapPageRoute({_i16.Key? key})
      : super(ActivateLocationOrMapPageRoute.name,
            path: '/activate-location-or-map-page',
            args: ActivateLocationOrMapPageRouteArgs(key: key));

  static const String name = 'ActivateLocationOrMapPageRoute';
}

class ActivateLocationOrMapPageRouteArgs {
  const ActivateLocationOrMapPageRouteArgs({this.key});

  final _i16.Key? key;

  @override
  String toString() {
    return 'ActivateLocationOrMapPageRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i11.ActivateLocationOrRideMapPage]
class ActivateLocationOrRideMapPageRoute
    extends _i15.PageRouteInfo<ActivateLocationOrRideMapPageRouteArgs> {
  ActivateLocationOrRideMapPageRoute(
      {_i16.Key? key, required _i17.UserRecord userRecord})
      : super(ActivateLocationOrRideMapPageRoute.name,
            path: '/activate-location-or-ride-map-page',
            args: ActivateLocationOrRideMapPageRouteArgs(
                key: key, userRecord: userRecord));

  static const String name = 'ActivateLocationOrRideMapPageRoute';
}

class ActivateLocationOrRideMapPageRouteArgs {
  const ActivateLocationOrRideMapPageRouteArgs(
      {this.key, required this.userRecord});

  final _i16.Key? key;

  final _i17.UserRecord userRecord;

  @override
  String toString() {
    return 'ActivateLocationOrRideMapPageRouteArgs{key: $key, userRecord: $userRecord}';
  }
}

/// generated route for
/// [_i12.SendMessagePage]
class SendMessagePageRoute
    extends _i15.PageRouteInfo<SendMessagePageRouteArgs> {
  SendMessagePageRoute({_i16.Key? key})
      : super(SendMessagePageRoute.name,
            path: '/send-message-page',
            args: SendMessagePageRouteArgs(key: key));

  static const String name = 'SendMessagePageRoute';
}

class SendMessagePageRouteArgs {
  const SendMessagePageRouteArgs({this.key});

  final _i16.Key? key;

  @override
  String toString() {
    return 'SendMessagePageRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i13.PortailCaptain]
class PortailCaptainRoute extends _i15.PageRouteInfo<void> {
  const PortailCaptainRoute()
      : super(PortailCaptainRoute.name, path: '/portail-captain');

  static const String name = 'PortailCaptainRoute';
}

/// generated route for
/// [_i14.RideRootPage]
class RideRootPageRoute extends _i15.PageRouteInfo<RideRootPageRouteArgs> {
  RideRootPageRoute({_i16.Key? key, required _i17.UserRecord userRecord})
      : super(RideRootPageRoute.name,
            path: '/ride-root-page',
            args: RideRootPageRouteArgs(key: key, userRecord: userRecord));

  static const String name = 'RideRootPageRoute';
}

class RideRootPageRouteArgs {
  const RideRootPageRouteArgs({this.key, required this.userRecord});

  final _i16.Key? key;

  final _i17.UserRecord userRecord;

  @override
  String toString() {
    return 'RideRootPageRouteArgs{key: $key, userRecord: $userRecord}';
  }
}

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i19;
import 'package:flutter/material.dart' as _i20;

import '../../driver/domain/driver_record.dart' as _i22;
import '../../driver/ui/ride_finished_page.dart' as _i12;
import '../../profile/ui/portail_captain.dart' as _i17;
import '../../ride/domain/ride.dart' as _i21;
import '../../ride/ui/activate_location_or_ride_map_page.dart' as _i15;
import '../../ride/ui/my_ride_page.dart' as _i4;
import '../../ride/ui/my_rides_page.dart' as _i3;
import '../../ride/ui/ride_cancelled_page.dart' as _i13;
import '../../ride/ui/ride_root_page.dart' as _i18;
import '../auth/login_page.dart' as _i8;
import '../auth/phone_auth_page.dart' as _i9;
import '../auth/phone_verification_page.dart' as _i7;
import '../home/help/send_message_page.dart' as _i16;
import '../home/home_page.dart' as _i11;
import '../home/pick_location/activate_location_page.dart' as _i14;
import '../intro/intro_page.dart' as _i10;
import '../splash/splash_page.dart' as _i1;
import '../submission/submission_page.dart' as _i2;
import '../submission/submission_success_page.dart' as _i5;
import '../submission/widgets/upload_field.dart' as _i6;

class AppRouter extends _i19.RootStackRouter {
  AppRouter([_i20.GlobalKey<_i20.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i19.PageFactory> pagesMap = {
    SplashPageRoute.name: (routeData) {
      return _i19.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SplashPage());
    },
    SubmissionPageRoute.name: (routeData) {
      final args = routeData.argsAs<SubmissionPageRouteArgs>(
          orElse: () => const SubmissionPageRouteArgs());
      return _i19.MaterialPageX<dynamic>(
          routeData: routeData, child: _i2.SubmissionPage(key: args.key));
    },
    MyRidesPageRoute.name: (routeData) {
      final args = routeData.argsAs<MyRidesPageRouteArgs>(
          orElse: () => const MyRidesPageRouteArgs());
      return _i19.MaterialPageX<dynamic>(
          routeData: routeData, child: _i3.MyRidesPage(key: args.key));
    },
    MyRidePageRoute.name: (routeData) {
      final args = routeData.argsAs<MyRidePageRouteArgs>();
      return _i19.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i4.MyRidePage(key: args.key, ride: args.ride));
    },
    SubmissionSuccessPageRoute.name: (routeData) {
      return _i19.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.SubmissionSuccessPage());
    },
    DocumentImagePageRoute.name: (routeData) {
      final args = routeData.argsAs<DocumentImagePageRouteArgs>();
      return _i19.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i6.DocumentImagePage(key: args.key, image: args.image));
    },
    PhoneVerificationPageRoute.name: (routeData) {
      final args = routeData.argsAs<PhoneVerificationPageRouteArgs>();
      return _i19.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i7.PhoneVerificationPage(
              key: args.key,
              phoneNumber: args.phoneNumber,
              phone: args.phone,
              verificationId: args.verificationId));
    },
    LoginPageRoute.name: (routeData) {
      final args = routeData.argsAs<LoginPageRouteArgs>(
          orElse: () => const LoginPageRouteArgs());
      return _i19.MaterialPageX<dynamic>(
          routeData: routeData, child: _i8.LoginPage(key: args.key));
    },
    PhoneAuthPageRoute.name: (routeData) {
      final args = routeData.argsAs<PhoneAuthPageRouteArgs>(
          orElse: () => const PhoneAuthPageRouteArgs());
      return _i19.MaterialPageX<dynamic>(
          routeData: routeData, child: _i9.PhoneAuthPage(key: args.key));
    },
    IntroPageRoute.name: (routeData) {
      return _i19.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i10.IntroPage());
    },
    HomePageRoute.name: (routeData) {
      final args = routeData.argsAs<HomePageRouteArgs>(
          orElse: () => const HomePageRouteArgs());
      return _i19.MaterialPageX<dynamic>(
          routeData: routeData, child: _i11.HomePage(key: args.key));
    },
    RideFinishedPageRoute.name: (routeData) {
      final args = routeData.argsAs<RideFinishedPageRouteArgs>();
      return _i19.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i12.RideFinishedPage(
              key: args.key,
              startname: args.startname,
              destname: args.destname,
              totalDistance: args.totalDistance,
              totalDuration: args.totalDuration,
              totalPrice: args.totalPrice));
    },
    RideCancelledPageRoute.name: (routeData) {
      final args = routeData.argsAs<RideCancelledPageRouteArgs>();
      return _i19.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i13.RideCancelledPage(key: args.key, message: args.message));
    },
    ActivateLocationOrMapPageRoute.name: (routeData) {
      final args = routeData.argsAs<ActivateLocationOrMapPageRouteArgs>(
          orElse: () => const ActivateLocationOrMapPageRouteArgs());
      return _i19.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i14.ActivateLocationOrMapPage(key: args.key));
    },
    ActivateLocationOrRideMapPageRoute.name: (routeData) {
      final args = routeData.argsAs<ActivateLocationOrRideMapPageRouteArgs>();
      return _i19.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i15.ActivateLocationOrRideMapPage(
              key: args.key, userRecord: args.userRecord));
    },
    SendMessagePageRoute.name: (routeData) {
      final args = routeData.argsAs<SendMessagePageRouteArgs>(
          orElse: () => const SendMessagePageRouteArgs());
      return _i19.MaterialPageX<dynamic>(
          routeData: routeData, child: _i16.SendMessagePage(key: args.key));
    },
    PortailCaptainRoute.name: (routeData) {
      return _i19.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i17.PortailCaptain());
    },
    RideRootPageRoute.name: (routeData) {
      final args = routeData.argsAs<RideRootPageRouteArgs>();
      return _i19.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i18.RideRootPage(key: args.key, userRecord: args.userRecord));
    }
  };

  @override
  List<_i19.RouteConfig> get routes => [
        _i19.RouteConfig(SplashPageRoute.name, path: '/'),
        _i19.RouteConfig(SubmissionPageRoute.name, path: '/submission-page'),
        _i19.RouteConfig(MyRidesPageRoute.name, path: '/my-rides-page'),
        _i19.RouteConfig(MyRidePageRoute.name, path: '/my-ride-page'),
        _i19.RouteConfig(SubmissionSuccessPageRoute.name,
            path: '/submission-success-page'),
        _i19.RouteConfig(DocumentImagePageRoute.name,
            path: '/document-image-page'),
        _i19.RouteConfig(PhoneVerificationPageRoute.name,
            path: '/phone-verification-page'),
        _i19.RouteConfig(LoginPageRoute.name, path: '/login-page'),
        _i19.RouteConfig(PhoneAuthPageRoute.name, path: '/phone-auth-page'),
        _i19.RouteConfig(IntroPageRoute.name, path: '/intro-page'),
        _i19.RouteConfig(HomePageRoute.name, path: '/home-page'),
        _i19.RouteConfig(RideFinishedPageRoute.name,
            path: '/ride-finished-page'),
        _i19.RouteConfig(RideCancelledPageRoute.name,
            path: '/ride-cancelled-page'),
        _i19.RouteConfig(ActivateLocationOrMapPageRoute.name,
            path: '/activate-location-or-map-page'),
        _i19.RouteConfig(ActivateLocationOrRideMapPageRoute.name,
            path: '/activate-location-or-ride-map-page'),
        _i19.RouteConfig(SendMessagePageRoute.name, path: '/send-message-page'),
        _i19.RouteConfig(PortailCaptainRoute.name, path: '/portail-captain'),
        _i19.RouteConfig(RideRootPageRoute.name, path: '/ride-root-page')
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashPageRoute extends _i19.PageRouteInfo<void> {
  const SplashPageRoute() : super(SplashPageRoute.name, path: '/');

  static const String name = 'SplashPageRoute';
}

/// generated route for
/// [_i2.SubmissionPage]
class SubmissionPageRoute extends _i19.PageRouteInfo<SubmissionPageRouteArgs> {
  SubmissionPageRoute({_i20.Key? key})
      : super(SubmissionPageRoute.name,
            path: '/submission-page', args: SubmissionPageRouteArgs(key: key));

  static const String name = 'SubmissionPageRoute';
}

class SubmissionPageRouteArgs {
  const SubmissionPageRouteArgs({this.key});

  final _i20.Key? key;

  @override
  String toString() {
    return 'SubmissionPageRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i3.MyRidesPage]
class MyRidesPageRoute extends _i19.PageRouteInfo<MyRidesPageRouteArgs> {
  MyRidesPageRoute({_i20.Key? key})
      : super(MyRidesPageRoute.name,
            path: '/my-rides-page', args: MyRidesPageRouteArgs(key: key));

  static const String name = 'MyRidesPageRoute';
}

class MyRidesPageRouteArgs {
  const MyRidesPageRouteArgs({this.key});

  final _i20.Key? key;

  @override
  String toString() {
    return 'MyRidesPageRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i4.MyRidePage]
class MyRidePageRoute extends _i19.PageRouteInfo<MyRidePageRouteArgs> {
  MyRidePageRoute({_i20.Key? key, required _i21.Ride ride})
      : super(MyRidePageRoute.name,
            path: '/my-ride-page',
            args: MyRidePageRouteArgs(key: key, ride: ride));

  static const String name = 'MyRidePageRoute';
}

class MyRidePageRouteArgs {
  const MyRidePageRouteArgs({this.key, required this.ride});

  final _i20.Key? key;

  final _i21.Ride ride;

  @override
  String toString() {
    return 'MyRidePageRouteArgs{key: $key, ride: $ride}';
  }
}

/// generated route for
/// [_i5.SubmissionSuccessPage]
class SubmissionSuccessPageRoute extends _i19.PageRouteInfo<void> {
  const SubmissionSuccessPageRoute()
      : super(SubmissionSuccessPageRoute.name,
            path: '/submission-success-page');

  static const String name = 'SubmissionSuccessPageRoute';
}

/// generated route for
/// [_i6.DocumentImagePage]
class DocumentImagePageRoute
    extends _i19.PageRouteInfo<DocumentImagePageRouteArgs> {
  DocumentImagePageRoute({_i20.Key? key, required String image})
      : super(DocumentImagePageRoute.name,
            path: '/document-image-page',
            args: DocumentImagePageRouteArgs(key: key, image: image));

  static const String name = 'DocumentImagePageRoute';
}

class DocumentImagePageRouteArgs {
  const DocumentImagePageRouteArgs({this.key, required this.image});

  final _i20.Key? key;

  final String image;

  @override
  String toString() {
    return 'DocumentImagePageRouteArgs{key: $key, image: $image}';
  }
}

/// generated route for
/// [_i7.PhoneVerificationPage]
class PhoneVerificationPageRoute
    extends _i19.PageRouteInfo<PhoneVerificationPageRouteArgs> {
  PhoneVerificationPageRoute(
      {_i20.Key? key,
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

  final _i20.Key? key;

  final String phoneNumber;

  final String phone;

  final String verificationId;

  @override
  String toString() {
    return 'PhoneVerificationPageRouteArgs{key: $key, phoneNumber: $phoneNumber, phone: $phone, verificationId: $verificationId}';
  }
}

/// generated route for
/// [_i8.LoginPage]
class LoginPageRoute extends _i19.PageRouteInfo<LoginPageRouteArgs> {
  LoginPageRoute({_i20.Key? key})
      : super(LoginPageRoute.name,
            path: '/login-page', args: LoginPageRouteArgs(key: key));

  static const String name = 'LoginPageRoute';
}

class LoginPageRouteArgs {
  const LoginPageRouteArgs({this.key});

  final _i20.Key? key;

  @override
  String toString() {
    return 'LoginPageRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i9.PhoneAuthPage]
class PhoneAuthPageRoute extends _i19.PageRouteInfo<PhoneAuthPageRouteArgs> {
  PhoneAuthPageRoute({_i20.Key? key})
      : super(PhoneAuthPageRoute.name,
            path: '/phone-auth-page', args: PhoneAuthPageRouteArgs(key: key));

  static const String name = 'PhoneAuthPageRoute';
}

class PhoneAuthPageRouteArgs {
  const PhoneAuthPageRouteArgs({this.key});

  final _i20.Key? key;

  @override
  String toString() {
    return 'PhoneAuthPageRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i10.IntroPage]
class IntroPageRoute extends _i19.PageRouteInfo<void> {
  const IntroPageRoute() : super(IntroPageRoute.name, path: '/intro-page');

  static const String name = 'IntroPageRoute';
}

/// generated route for
/// [_i11.HomePage]
class HomePageRoute extends _i19.PageRouteInfo<HomePageRouteArgs> {
  HomePageRoute({_i20.Key? key})
      : super(HomePageRoute.name,
            path: '/home-page', args: HomePageRouteArgs(key: key));

  static const String name = 'HomePageRoute';
}

class HomePageRouteArgs {
  const HomePageRouteArgs({this.key});

  final _i20.Key? key;

  @override
  String toString() {
    return 'HomePageRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i12.RideFinishedPage]
class RideFinishedPageRoute
    extends _i19.PageRouteInfo<RideFinishedPageRouteArgs> {
  RideFinishedPageRoute(
      {_i20.Key? key,
      required String startname,
      required String destname,
      required int totalDistance,
      required int totalDuration,
      required double totalPrice})
      : super(RideFinishedPageRoute.name,
            path: '/ride-finished-page',
            args: RideFinishedPageRouteArgs(
                key: key,
                startname: startname,
                destname: destname,
                totalDistance: totalDistance,
                totalDuration: totalDuration,
                totalPrice: totalPrice));

  static const String name = 'RideFinishedPageRoute';
}

class RideFinishedPageRouteArgs {
  const RideFinishedPageRouteArgs(
      {this.key,
      required this.startname,
      required this.destname,
      required this.totalDistance,
      required this.totalDuration,
      required this.totalPrice});

  final _i20.Key? key;

  final String startname;

  final String destname;

  final int totalDistance;

  final int totalDuration;

  final double totalPrice;

  @override
  String toString() {
    return 'RideFinishedPageRouteArgs{key: $key, startname: $startname, destname: $destname, totalDistance: $totalDistance, totalDuration: $totalDuration, totalPrice: $totalPrice}';
  }
}

/// generated route for
/// [_i13.RideCancelledPage]
class RideCancelledPageRoute
    extends _i19.PageRouteInfo<RideCancelledPageRouteArgs> {
  RideCancelledPageRoute({_i20.Key? key, required String message})
      : super(RideCancelledPageRoute.name,
            path: '/ride-cancelled-page',
            args: RideCancelledPageRouteArgs(key: key, message: message));

  static const String name = 'RideCancelledPageRoute';
}

class RideCancelledPageRouteArgs {
  const RideCancelledPageRouteArgs({this.key, required this.message});

  final _i20.Key? key;

  final String message;

  @override
  String toString() {
    return 'RideCancelledPageRouteArgs{key: $key, message: $message}';
  }
}

/// generated route for
/// [_i14.ActivateLocationOrMapPage]
class ActivateLocationOrMapPageRoute
    extends _i19.PageRouteInfo<ActivateLocationOrMapPageRouteArgs> {
  ActivateLocationOrMapPageRoute({_i20.Key? key})
      : super(ActivateLocationOrMapPageRoute.name,
            path: '/activate-location-or-map-page',
            args: ActivateLocationOrMapPageRouteArgs(key: key));

  static const String name = 'ActivateLocationOrMapPageRoute';
}

class ActivateLocationOrMapPageRouteArgs {
  const ActivateLocationOrMapPageRouteArgs({this.key});

  final _i20.Key? key;

  @override
  String toString() {
    return 'ActivateLocationOrMapPageRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i15.ActivateLocationOrRideMapPage]
class ActivateLocationOrRideMapPageRoute
    extends _i19.PageRouteInfo<ActivateLocationOrRideMapPageRouteArgs> {
  ActivateLocationOrRideMapPageRoute(
      {_i20.Key? key, required _i22.UserRecord userRecord})
      : super(ActivateLocationOrRideMapPageRoute.name,
            path: '/activate-location-or-ride-map-page',
            args: ActivateLocationOrRideMapPageRouteArgs(
                key: key, userRecord: userRecord));

  static const String name = 'ActivateLocationOrRideMapPageRoute';
}

class ActivateLocationOrRideMapPageRouteArgs {
  const ActivateLocationOrRideMapPageRouteArgs(
      {this.key, required this.userRecord});

  final _i20.Key? key;

  final _i22.UserRecord userRecord;

  @override
  String toString() {
    return 'ActivateLocationOrRideMapPageRouteArgs{key: $key, userRecord: $userRecord}';
  }
}

/// generated route for
/// [_i16.SendMessagePage]
class SendMessagePageRoute
    extends _i19.PageRouteInfo<SendMessagePageRouteArgs> {
  SendMessagePageRoute({_i20.Key? key})
      : super(SendMessagePageRoute.name,
            path: '/send-message-page',
            args: SendMessagePageRouteArgs(key: key));

  static const String name = 'SendMessagePageRoute';
}

class SendMessagePageRouteArgs {
  const SendMessagePageRouteArgs({this.key});

  final _i20.Key? key;

  @override
  String toString() {
    return 'SendMessagePageRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i17.PortailCaptain]
class PortailCaptainRoute extends _i19.PageRouteInfo<void> {
  const PortailCaptainRoute()
      : super(PortailCaptainRoute.name, path: '/portail-captain');

  static const String name = 'PortailCaptainRoute';
}

/// generated route for
/// [_i18.RideRootPage]
class RideRootPageRoute extends _i19.PageRouteInfo<RideRootPageRouteArgs> {
  RideRootPageRoute({_i20.Key? key, required _i22.UserRecord userRecord})
      : super(RideRootPageRoute.name,
            path: '/ride-root-page',
            args: RideRootPageRouteArgs(key: key, userRecord: userRecord));

  static const String name = 'RideRootPageRoute';
}

class RideRootPageRouteArgs {
  const RideRootPageRouteArgs({this.key, required this.userRecord});

  final _i20.Key? key;

  final _i22.UserRecord userRecord;

  @override
  String toString() {
    return 'RideRootPageRouteArgs{key: $key, userRecord: $userRecord}';
  }
}

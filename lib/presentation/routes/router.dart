import 'package:auto_route/auto_route.dart';
import 'package:wigootaxidriver/presentation/auth/login_page.dart';
import 'package:wigootaxidriver/presentation/auth/phone_auth_page.dart';
import 'package:wigootaxidriver/presentation/auth/phone_verification_page.dart';
import 'package:wigootaxidriver/presentation/auth/signup_page.dart';
import 'package:wigootaxidriver/presentation/home/help/send_message_page.dart';
import 'package:wigootaxidriver/presentation/home/home_page.dart';
import 'package:wigootaxidriver/presentation/home/pick_location/activate_location_page.dart';
import 'package:wigootaxidriver/presentation/intro/intro_page.dart';
import 'package:wigootaxidriver/presentation/splash/splash_page.dart';
import 'package:wigootaxidriver/presentation/submission/submission_page.dart';

@MaterialAutoRouter(routes: <AutoRoute>[
  AutoRoute(page: SplashPage),
  AutoRoute(page: SubmissionPage, initial: true),
  AutoRoute(page: PhoneVerificationPage),
  AutoRoute(page: PhoneAuthPage),
  AutoRoute(page: LoginPage),
  AutoRoute(page: IntroPage),
  AutoRoute(page: SignUpPage),
  AutoRoute(page: HomePage),
  AutoRoute(page: ActivateLocationPage),
  AutoRoute(page: SendMessagePage),
])
class $AppRouter {}

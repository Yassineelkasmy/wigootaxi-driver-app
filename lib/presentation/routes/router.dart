import 'package:auto_route/auto_route.dart';
import 'package:wigootaxidriver/bookings/ui/bookings_page.dart';
import 'package:wigootaxidriver/presentation/auth/login_page.dart';
import 'package:wigootaxidriver/presentation/auth/phone_auth_page.dart';
import 'package:wigootaxidriver/presentation/auth/phone_verification_page.dart';
import 'package:wigootaxidriver/presentation/home/help/send_message_page.dart';
import 'package:wigootaxidriver/presentation/home/home_page.dart';
import 'package:wigootaxidriver/presentation/home/pick_location/activate_location_page.dart';
import 'package:wigootaxidriver/presentation/intro/intro_page.dart';
import 'package:wigootaxidriver/presentation/splash/splash_page.dart';
import 'package:wigootaxidriver/presentation/submission/submission_page.dart';
import 'package:wigootaxidriver/presentation/submission/submission_success_page.dart';
import 'package:wigootaxidriver/presentation/submission/widgets/upload_field.dart';
import 'package:wigootaxidriver/profile/ui/portail_captain.dart';

@MaterialAutoRouter(routes: <AutoRoute>[
  AutoRoute(page: SplashPage, initial: true),
  AutoRoute(page: SubmissionPage),
  AutoRoute(page: SubmissionSuccessPage),
  AutoRoute(page: DocumentImagePage),
  AutoRoute(page: PhoneVerificationPage),
  AutoRoute(page: LoginPage),
  AutoRoute(page: PhoneAuthPage),
  AutoRoute(page: IntroPage),
  AutoRoute(page: HomePage),
  AutoRoute(page: BookingsPage),
  AutoRoute(page: ActivateLocationOrMapPage),
  AutoRoute(page: SendMessagePage),
  AutoRoute(page: portail_Captain),
])
class $AppRouter {}

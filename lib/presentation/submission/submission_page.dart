import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:wigootaxidriver/application/auth/auth_event.dart';
import 'package:wigootaxidriver/application/auth/auth_state.dart';
import 'package:wigootaxidriver/application/providers/auth/auth_providers.dart';
import 'package:wigootaxidriver/application/providers/submission_provider.dart';
import 'package:wigootaxidriver/application/submission/submission_controller.dart';
import 'package:wigootaxidriver/application/submission/submission_event.dart';
import 'package:wigootaxidriver/domain/auth/user.dart';
import 'package:wigootaxidriver/presentation/submission/documents_submission_form.dart';
import 'package:wigootaxidriver/presentation/submission/driver_type_form.dart';
import 'package:wigootaxidriver/presentation/submission/signup_form.dart';

class SubmissionPage extends HookConsumerWidget {
  SubmissionPage({Key? key}) : super(key: key);
  final pageController = PageController();
  User? user;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authState = ref.watch(authtProvider);
    final authController = ref.watch(authtProvider.notifier);

    final authenticated = useState<bool>(
      authState.maybeMap(
        orElse: () => false,
        authenticated: (_) {
          return true;
        },
      ),
    );

    ref.listen<AuthState>(
      authtProvider,
      (_, nextAuthState) {
        nextAuthState.map(
          initial: (_) {},
          authenticated: (_) => authenticated.value = true,
          unauthenticated: (unAuth) {
            null;
          },
        );
      },
    );

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
        child: SizedBox(
            width: double.maxFinite,
            child: PageView(
              controller: pageController,
              children: [
                DriverTypeForm(
                  pageController: pageController,
                ),
                if (!authenticated.value)
                  SignUpForm(
                    pageController: pageController,
                  ),
                if (authenticated.value) DocumentSubmissionForm(),
              ],
            )),
      ),
    );
  }
}

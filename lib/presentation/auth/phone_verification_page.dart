import 'package:auto_route/auto_route.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:wigootaxidriver/application/auth/auth_controller.dart';
import 'package:wigootaxidriver/application/auth/auth_event.dart';
import 'package:wigootaxidriver/application/providers/auth/auth_providers.dart';
import 'package:wigootaxidriver/presentation/routes/router.gr.dart';
import 'package:wigootaxidriver/presentation/shared/logo.dart';
import 'package:wigootaxidriver/presentation/shared/submit_button.dart';
import 'package:wigootaxidriver/presentation/theme/colors.dart';

class PhoneVerificationPage extends HookConsumerWidget {
  PhoneVerificationPage({
    Key? key,
    required this.phoneNumber,
    required this.phone,
    required this.verificationId,
  }) : super(key: key);
  final String phoneNumber;
  final String phone;
  final String verificationId;
  final controller = TextEditingController();

  Future<void> verifyPhone(String pin, AuthController authController) async {
    if (pin.length == 6) {
      PhoneAuthCredential credential = PhoneAuthProvider.credential(
        verificationId: verificationId,
        smsCode: pin,
      );

      final userCreds = await FirebaseAuth.instance.currentUser!
          .linkWithCredential(credential);
      final user = userCreds.user;
      if (user != null) {
        await FirebaseFirestore.instance
            .collection('drivers')
            .doc(user.uid)
            .update({
          'isPhoneVerified': true,
          'phone': phone,
        });
      }
      authController.mapEventToState(AuthEvent.authCheckRequested());
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authController = ref.watch(authtProvider.notifier);
    final isLoading = useState(false);
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 28.w,
          vertical: 20.h,
        ),
        width: double.maxFinite,
        child: SubmitButton(
          onPressed: () => {
            AutoRouter.of(context)
                .popUntilRouteWithName(SubmissionPageRoute.name),
          },
          text: "CREER UN COMPTE",
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            buildLogo(white: false),
            Center(
              child: Text(
                "Un code a ete envoye a",
                style: TextStyle(
                  fontSize: 18.sp,
                ),
              ),
            ),
            6.verticalSpace,
            Center(
              child: Text(
                phoneNumber,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.sp,
                ),
              ),
            ),
            50.verticalSpace,
            PinCodeTextField(
              controller: controller,
              appContext: context,
              length: 6,
              onChanged: (pin) async {
                await verifyPhone(pin, authController);
              },
              keyboardType: TextInputType.number,
              cursorColor: kPrimaryColor,
              pinTheme: PinTheme(
                shape: PinCodeFieldShape.box,
                borderRadius: BorderRadius.circular(15.r),
                activeColor: kPrimaryColor,
                activeFillColor: Colors.grey.shade300,
                selectedColor: kPrimaryColor,
                disabledColor: Colors.grey,
                inactiveColor: Colors.grey,
              ),
            ),
            15.verticalSpace,
            Align(
              child: Text(
                "Envoyez un autre code",
                style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.bold,
                  color: kPrimaryColor,
                ),
              ),
              alignment: Alignment.topCenter,
            ),
            15.verticalSpace,
          ],
        ),
      ),
    );
  }
}

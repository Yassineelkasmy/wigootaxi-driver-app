import 'package:auto_route/auto_route.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:in_app_notification/in_app_notification.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:wigootaxidriver/application/auth/auth_form/auth_form_event.dart';
import 'package:wigootaxidriver/application/providers/auth/auth_providers.dart';
import 'package:wigootaxidriver/presentation/routes/router.gr.dart';
import 'package:wigootaxidriver/presentation/shared/in_app_notfication.dart';
import 'package:wigootaxidriver/presentation/shared/submit_button.dart';
import 'package:wigootaxidriver/presentation/theme/colors.dart';
import 'package:wigootaxidriver/presentation/theme/spacings.dart';

class PhoneAuthPage extends HookConsumerWidget {
  PhoneAuthPage({Key? key}) : super(key: key);
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isLoading = useState(false);
    final autFormController = ref.watch(authFormProvider.notifier);

    final authFormController = ref.watch(authFormProvider.notifier);
    final authFormState = ref.watch(authFormProvider);
    final phoneForm = FormGroup({
      'phone': FormControl<String>(
        validators: [],
      ),
    });
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        centerTitle: false,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          'Verification SMS',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: kPadding,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ReactiveForm(
                formGroup: phoneForm,
                child: Material(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: ReactiveTextField(
                    controller: controller,
                    formControlName: 'phone',
                    decoration: InputDecoration(
                      prefixIcon: const Icon(
                        CupertinoIcons.phone,
                        color: kPrimaryColor,
                      ),
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: BorderSide.none,
                      ),
                      labelText: 'Numéro de téléphone',
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: BorderSide.none,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                )),
            20.verticalSpace,
            SizedBox(
              width: double.maxFinite,
              child: SubmitButton(
                isLoading: isLoading.value,
                onPressed: () async {
                  final phone = controller.text;

                  final phoneInt = int.tryParse(phone);
                  if (phone.length >= 10 || phoneInt == null) {
                    isLoading.value = true;
                    final phoneNumber = '+212${phone.substring(1)}';
                    // final testDoc = await FirebaseFirestore.instance
                    //     .collection('users')
                    //     .where('phone', isEqualTo: phone)
                    //     .get();

                    try {
                      await FirebaseAuth.instance.verifyPhoneNumber(
                        phoneNumber: phoneNumber,
                        verificationCompleted:
                            (PhoneAuthCredential credential) {
                          isLoading.value = false;
                        },
                        verificationFailed: (FirebaseAuthException e) {
                          isLoading.value = false;
                        },
                        codeSent: (String verificationId, int? resendToken) {
                          isLoading.value = false;

                          AutoRouter.of(context).push(
                            PhoneVerificationPageRoute(
                              phoneNumber: phoneNumber,
                              phone: phone,
                              verificationId: verificationId,
                            ),
                          );
                        },
                        codeAutoRetrievalTimeout: (String verificationId) {},
                      );
                    } catch (e) {
                      isLoading.value = false;
                    }

                    isLoading.value = false;
                  } else {
                    InAppNotification.show(
                      duration: Duration(seconds: 3),
                      child: InnerNotifications(
                        message: 'Le numéro de téléphone est invalide',
                        isScuccess: false,
                      ),
                      context: context,
                    );
                  }
                },
                text: 'VERIFIER',
              ),
            ),
            20.h.verticalSpace,
            SizedBox(
              width: double.maxFinite,
              child: SubmitButton(
                color: Colors.red,
                onPressed: () async {
                  autFormController.mapEventToState(
                    const AuthFormEvent.signOutPressed(),
                  );

                  Phoenix.rebirth(context);
                },
                text: "Se déconnecter",
              ),
            ),
          ],
        ),
      ),
    );
  }
}

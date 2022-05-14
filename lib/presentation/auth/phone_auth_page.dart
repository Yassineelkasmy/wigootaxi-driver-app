import 'package:auto_route/auto_route.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:wigootaxidriver/application/providers/auth/auth_providers.dart';
import 'package:wigootaxidriver/presentation/routes/router.gr.dart';
import 'package:wigootaxidriver/presentation/shared/submit_button.dart';
import 'package:wigootaxidriver/presentation/theme/spacings.dart';

class PhoneAuthPage extends HookConsumerWidget {
  PhoneAuthPage({Key? key}) : super(key: key);
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isLoading = useState(false);

    final authFormController = ref.watch(authFormProvider.notifier);
    final authFormState = ref.watch(authFormProvider);
    final phoneForm = FormGroup({
      'phone': FormControl<String>(
        validators: [
          Validators.required,
          Validators.minLength(10),
        ],
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
              child: ReactiveTextField(
                controller: controller,
                decoration: InputDecoration(
                  hintText: "Numéro de téléphone",
                  prefixIcon: Icon(Icons.phone),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.r),
                  ),
                ),
                formControlName: 'phone',
                validationMessages: (control) => {
                  'required': "Numéro de téléphone ne doit pas être vide",
                  'email': 'Numéro de téléphone invalide'
                },
              ),
            ),
            20.verticalSpace,
            SizedBox(
              width: double.maxFinite,
              child: SubmitButton(
                isLoading: isLoading.value,
                onPressed: () async {
                  final phone = controller.text;
                  if (phone.length >= 10) {
                    isLoading.value = true;
                    final phoneNumber = '+212${phone.substring(1)}';

                    try {
                      await FirebaseAuth.instance.verifyPhoneNumber(
                        phoneNumber: phoneNumber,
                        verificationCompleted:
                            (PhoneAuthCredential credential) {},
                        verificationFailed: (FirebaseAuthException e) {},
                        codeSent: (String verificationId, int? resendToken) {
                          AutoRouter.of(context).push(
                            PhoneVerificationPageRoute(
                              phoneNumber: phoneNumber,
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
                  }
                },
                text: 'VERIFIER',
              ),
            ),
          ],
        ),
      ),
    );
  }
}

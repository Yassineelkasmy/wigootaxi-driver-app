import 'package:auto_route/auto_route.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:wigootaxidriver/application/auth/auth_form/auth_form_event.dart';
import 'package:wigootaxidriver/application/providers/auth/auth_providers.dart';
import 'package:wigootaxidriver/presentation/auth/widgets/social_media_button.dart';
import 'package:wigootaxidriver/presentation/routes/router.gr.dart';
import 'package:wigootaxidriver/presentation/shared/submit_button.dart';
import 'package:wigootaxidriver/presentation/theme/colors.dart';
import 'package:wigootaxidriver/presentation/theme/spacings.dart';

import '../shared/logo.dart';

class SignUpPage extends HookConsumerWidget {
  SignUpPage({Key? key}) : super(key: key);
  final loginForm = FormGroup(
    {
      'password': FormControl<String>(
        validators: [
          Validators.required,
          Validators.minLength(8),
        ],
      ),
      'confirmation': FormControl<String>(
        validators: [Validators.required, Validators.equals('password')],
      ),
      'email': FormControl<String>(
        validators: [
          Validators.required,
          Validators.email,
        ],
      ),
      'username': FormControl<String>(
        validators: [
          Validators.required,
          Validators.minLength(3),
        ],
      ),
      'phone': FormControl<String>(
        validators: [
          Validators.required,
          Validators.minLength(10),
        ],
      ),
    },
  );
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authController = ref.watch(authFormProvider.notifier);

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 25.w,
          ),
          child: SizedBox(
            width: double.maxFinite,
            child: Column(
              children: [
                buildLogo(white: false),
                ReactiveForm(
                  formGroup: loginForm,
                  child: Column(
                    children: [
                      ReactiveTextField(
                        decoration: InputDecoration(
                          contentPadding: kInputContentPadding,
                          hintStyle: kHintStyle,
                          hintText: "Nom d'utilisateur",
                          prefixIcon: Icon(Icons.person),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.r),
                          ),
                        ),
                        formControlName: 'username',
                        validationMessages: (control) => {
                          'required': "Nom d'utilisateur ne doit pas être vide",
                        },
                      ),
                      10.verticalSpace,
                      ReactiveTextField(
                        decoration: InputDecoration(
                          contentPadding: kInputContentPadding,
                          hintStyle: kHintStyle,
                          hintText: "Email",
                          prefixIcon: Icon(Icons.email),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.r),
                          ),
                        ),
                        formControlName: 'email',
                        validationMessages: (control) => {
                          'required': "Email ne doit pas être vide",
                        },
                      ),
                      10.verticalSpace,
                      ReactiveTextField(
                        decoration: InputDecoration(
                          contentPadding: kInputContentPadding,
                          hintStyle: kHintStyle,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.r),
                          ),
                          hintText: "Mot de passe",
                          prefixIcon: Icon(Icons.lock),
                        ),
                        formControlName: 'password',
                        obscureText: true,
                        validationMessages: (control) => {
                          'required': 'Le mot de passe ne doit pas être vide',
                          'minLenght':
                              'Le mot de passe doit comporter au moins 8 caractères'
                        },
                      ),
                      10.verticalSpace,
                      ReactiveTextField(
                        decoration: InputDecoration(
                          contentPadding: kInputContentPadding,
                          hintStyle: kHintStyle,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.r),
                          ),
                          hintText: "Confirmer votre Mot de passe",
                          prefixIcon: Icon(Icons.lock),
                        ),
                        formControlName: 'confirmation',
                        obscureText: true,
                        validationMessages: (control) => {
                          'required': 'Le mot de passe ne doit pas être vide',
                          'minLenght':
                              'Le mot de passe doit comporter au moins 8 caractères'
                        },
                      ),
                      20.verticalSpace,
                      SizedBox(
                        width: double.maxFinite,
                        child: SubmitButton(
                          onPressed: () => AutoRouter.of(context)
                              .push(PhoneVerificationPageRoute()),
                          text: "SUIVANT",
                        ),
                      ),
                      10.verticalSpace,
                    ],
                  ),
                ),
                SocialMedia(
                  onFacebookPressed: () {
                    authController.mapEventToState(
                        const AuthFormEvent.registerWithFacebookPressed());
                  },
                  onGooglePressed: () {
                    authController.mapEventToState(
                        const AuthFormEvent.registerWithGooglePressed());
                  },
                  text: "S'INSCRIRE AVEC",
                ),
                15.verticalSpace,
                RichText(
                  text: TextSpan(
                    text: "Vous avez déjà un compte ? ",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16.sp,
                    ),
                    children: [
                      TextSpan(
                        text: "Connexion",
                        style: TextStyle(
                          color: kPrimaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () =>
                              AutoRouter.of(context).replace(LoginPageRoute()),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

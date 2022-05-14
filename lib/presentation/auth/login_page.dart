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

class LoginPage extends HookConsumerWidget {
  LoginPage({Key? key}) : super(key: key);
  final loginForm = FormGroup(
    {
      'email': FormControl<String>(validators: [
        Validators.required,
        Validators.email,
      ]),
      'password': FormControl<String>(validators: [
        Validators.required,
        Validators.minLength(8),
      ]),
    },
  );
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authFormController = ref.watch(authFormProvider.notifier);
    final authFormState = ref.watch(authFormProvider);

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 28.w,
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
                        border: UnderlineInputBorder(
                          borderRadius: BorderRadius.circular(30.r),
                        ),
                      ),
                      formControlName: 'email',
                      validationMessages: (control) => {
                        'required': "L'e-mail ne doit pas être vide",
                        'email': 'Email invalide'
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
                    Align(
                      alignment: Alignment.topLeft,
                      child: TextButton(
                        child: Text(
                          "Mot de passe oublié ?",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14.sp,
                          ),
                        ),
                        onPressed: () => {},
                      ),
                    ),
                    10.verticalSpace,
                    SizedBox(
                      width: double.maxFinite,
                      child: SubmitButton(
                        isLoading: authFormState.isSubmitting,
                        onPressed: () {
                          final email =
                              loginForm.findControl('email')!.value as String;
                          final password = loginForm
                              .findControl('password')!
                              .value as String;
                          print(email);
                          print(password);
                          authFormController.mapEventToState(
                            AuthFormEvent.signInWithEmailAndPasswordPressed(
                              email,
                              password,
                            ),
                          );
                        },
                        text: "CONNEXION",
                      ),
                    ),
                  ],
                ),
              ),
              20.verticalSpace,
              SocialMedia(
                onFacebookPressed: () {},
                onGooglePressed: () {
                  authFormController.mapEventToState(
                      const AuthFormEvent.signInWithGooglePresseed());
                },
                text: "SE CONNECTER AVEC",
              ),
              Expanded(child: SizedBox()),
            ],
          ),
        ),
      ),
    );
  }
}

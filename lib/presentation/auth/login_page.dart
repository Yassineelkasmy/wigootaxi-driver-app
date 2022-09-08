import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:in_app_notification/in_app_notification.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:wigootaxidriver/application/auth/auth_form/auth_form_event.dart';
import 'package:wigootaxidriver/application/auth/auth_form/auth_form_state.dart';
import 'package:wigootaxidriver/application/auth/auth_state.dart';
import 'package:wigootaxidriver/application/providers/auth/auth_providers.dart';
import 'package:wigootaxidriver/presentation/auth/widgets/social_media_button.dart';
import 'package:wigootaxidriver/presentation/routes/router.gr.dart';
import 'package:wigootaxidriver/presentation/shared/in_app_notfication.dart';
import 'package:wigootaxidriver/presentation/shared/submit_button.dart';
import 'package:wigootaxidriver/presentation/theme/colors.dart';

import '../shared/logo.dart';

class LoginPage extends HookConsumerWidget {
  LoginPage({Key? key}) : super(key: key);
  final loginForm = FormGroup(
    {
      'email': FormControl<String>(validators: [
        // Validators.required,
        // Validators.email,
      ]),
      'password': FormControl<String>(validators: [
        // Validators.required,
        // Validators.minLength(8),
      ]),
    },
  );
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authFormController = ref.watch(authFormProvider.notifier);
    final authFormState = ref.watch(authFormProvider);
    ref.listen<AuthState>(authtProvider, (_, nextAuthState) {
      nextAuthState.map(
          initial: (_) {},
          authenticated: (_) {
            if (_.user.isPhoneVerified) {
              if (_.user.status == 'accepted') {
                AutoRouter.of(context).push(ActivateLocationOrMapPageRoute());
              } else {
                AutoRouter.of(context).push(SubmissionPageRoute());
              }
            } else {
              AutoRouter.of(context).push(PhoneAuthPageRoute());
            }
          },
          unauthenticated: (unAuth) {
            AutoRouter.of(context).replace(IntroPageRoute());
          });
    });

    ref.listen<AuthFormState>(
      authFormProvider,
      (previous, next) {
        next.authFailureOrSuccessOption.map(
          (failure) => failure.fold(
            (failure) {
              final message = failure.map(
                cancelledByUser: (_) => "Annulé par l'utilisateur",
                serverError: (_) => "Erreur du serveur",
                emailAlreadyInUse: (_) => "Email déjà utilisé",
                invalidCredentials: (_) =>
                    "Les informations d'identification invalides",
                userDisabled: (_) => "Utilisateur désactivé",
                userNotVerified: (_) => "Utilisateur non vérifié",
                invalidPinCode: (_) => "Code PIN invalide",
                phoneAlreadyInUse: (_) => "Téléphone déjà utilisé",
                goolgeAccountNotRegistered: (_) =>
                    "Compte Google non inscrit, Créez d'abord un compte avec Google",
              );

              InAppNotification.show(
                duration: Duration(seconds: 3),
                child: InnerNotifications(
                  message: message,
                  isScuccess: false,
                ),
                context: context,
              );
            },
            (_) => null,
          ),
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
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 28.w,
          ),
          child: SizedBox(
            width: double.maxFinite,
            height: 1.sh,
            child: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  buildLogo(white: false),
                  ReactiveForm(
                    formGroup: loginForm,
                    child: Column(
                      children: [
                        Material(
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: ReactiveTextField(
                            formControlName: 'email',
                            decoration: InputDecoration(
                              prefixIcon: const Icon(
                                CupertinoIcons.profile_circled,
                                color: kPrimaryColor,
                              ),
                              fillColor: Colors.white,
                              filled: true,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide: BorderSide.none,
                              ),
                              labelText: "Nom d'utilisateur",
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
                        ),
                        10.verticalSpace,
                        Material(
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: ReactiveTextField(
                            formControlName: 'password',
                            obscureText: true,
                            decoration: InputDecoration(
                              prefixIcon: const Icon(
                                CupertinoIcons.padlock,
                                color: kPrimaryColor,
                              ),
                              fillColor: Colors.white,
                              filled: true,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide: BorderSide.none,
                              ),
                              labelText: 'Mot de passe',
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
                              final email = loginForm
                                  .findControl('email')!
                                  .value as String;
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

                  // Expanded(child: SizedBox()),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

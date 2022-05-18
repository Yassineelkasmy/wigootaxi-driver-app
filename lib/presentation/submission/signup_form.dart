import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:wigootaxidriver/application/auth/auth_form/auth_form_event.dart';
import 'package:wigootaxidriver/application/providers/auth/auth_providers.dart';
import 'package:wigootaxidriver/presentation/shared/logo.dart';
import 'package:wigootaxidriver/presentation/shared/submit_button.dart';
import 'package:wigootaxidriver/presentation/submission/widgets/step_indicator.dart';
import 'package:wigootaxidriver/presentation/theme/colors.dart';

class SignUpForm extends HookConsumerWidget {
  SignUpForm({
    Key? key,
    required this.pageController,
  }) : super(key: key);
  final PageController pageController;

  final signUpForm = FormGroup(
    {
      'password': FormControl<String>(
        validators: [
          // Validators.required,
          // Validators.minLength(8),
        ],
      ),
      'confirmation': FormControl<String>(
        validators: [
          // Validators.required,
          // Validators.equals('password'),
        ],
      ),
      'email': FormControl<String>(
        validators: [
          // Validators.required,
          // Validators.email,
        ],
      ),
      'username': FormControl<String>(
        validators: [
          // Validators.required,
          // Validators.minLength(3),
        ],
      ),
    },
  );

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authFormController = ref.watch(authFormProvider.notifier);
    final authFormState = ref.watch(authFormProvider);
    final authController = ref.watch(authtProvider.notifier);

    return SingleChildScrollView(
      child: Column(
        children: [
          buildSmallLogo(),
          20.h.verticalSpace,
          Row(
            children: [
              buildStepIndicator(1, true),
              SizedBox(
                width: 10.w,
                child: Divider(
                  color: kPrimaryColor,
                ),
              ),
              buildStepIndicator(2, true),
              5.w.horizontalSpace,
              Text(
                "Données personnelles",
                style: TextStyle(
                  color: kPrimaryColor,
                  fontSize: 16.sp,
                ),
              ),
              Expanded(
                child: Divider(),
              ),
              buildStepIndicator(3, false),
            ],
          ),
          20.h.verticalSpace,
          Text(
            'Veuillez saisir vos coordonnées pour finaliser votre inscription',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
          40.h.verticalSpace,
          ReactiveForm(
              formGroup: signUpForm,
              child: Column(
                children: [
                  Material(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: ReactiveTextField(
                      formControlName: 'username',
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
                  10.h.verticalSpace,
                  Material(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: ReactiveTextField(
                      formControlName: 'email',
                      decoration: InputDecoration(
                        prefixIcon: const Icon(
                          CupertinoIcons.mail,
                          color: kPrimaryColor,
                        ),
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide: BorderSide.none,
                        ),
                        labelText: "Email",
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
                  10.h.verticalSpace,
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
                  10.h.verticalSpace,
                  Material(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: ReactiveTextField(
                      formControlName: 'confirmation',
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
                        labelText: 'Confirmation du mot de passe',
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
                  20.verticalSpace,
                  SizedBox(
                    width: double.maxFinite,
                    child: SubmitButton(
                      isLoading: authFormState.isSubmitting,
                      onPressed: () async {
                        final username =
                            signUpForm.findControl('username')!.value as String;

                        final email =
                            signUpForm.findControl('email')!.value as String;
                        final password =
                            signUpForm.findControl('password')!.value as String;

                        await authFormController.mapEventToState(
                          AuthFormEvent.registerWithEmailAndPasswordPressed(
                            email,
                            password,
                            username,
                          ),
                        );
                      },
                      text: "SUIVANT",
                    ),
                  ),
                ],
              ))
        ],
      ),
    );
  }
}

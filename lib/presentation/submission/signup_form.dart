import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:wigootaxidriver/presentation/shared/logo.dart';
import 'package:wigootaxidriver/presentation/shared/submit_button.dart';
import 'package:wigootaxidriver/presentation/submission/widgets/driver_type_card.dart';
import 'package:wigootaxidriver/presentation/submission/widgets/step_indicator.dart';
import 'package:wigootaxidriver/presentation/theme/colors.dart';
import 'package:wigootaxidriver/presentation/theme/spacings.dart';

class SignUpForm extends StatelessWidget {
  SignUpForm({Key? key}) : super(key: key);
  final signUpForm = FormGroup(
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
  Widget build(BuildContext context) {
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
                  10.h.verticalSpace,
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
                  10.h.verticalSpace,
                  ReactiveTextField(
                    decoration: InputDecoration(
                      hintText: "Numéro de téléphone",
                      contentPadding: kInputContentPadding,
                      hintStyle: kHintStyle,
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
                  10.h.verticalSpace,
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
                  10.h.verticalSpace,
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
                      onPressed: () {},
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

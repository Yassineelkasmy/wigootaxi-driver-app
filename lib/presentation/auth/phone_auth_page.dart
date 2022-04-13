import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:wigootaxidriver/presentation/shared/submit_button.dart';
import 'package:wigootaxidriver/presentation/theme/spacings.dart';

class PhoneAuthPage extends StatelessWidget {
  const PhoneAuthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
              child: SubmitButton(onPressed: () {}, text: 'VERIFIER'),
            ),
          ],
        ),
      ),
    );
  }
}

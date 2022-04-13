import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:wigootaxidriver/presentation/routes/router.gr.dart';
import 'package:wigootaxidriver/presentation/shared/logo.dart';
import 'package:wigootaxidriver/presentation/shared/submit_button.dart';
import 'package:wigootaxidriver/presentation/theme/colors.dart';

class PhoneVerificationPage extends StatelessWidget {
  const PhoneVerificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                  AutoRouter.of(context).push(HomePageRoute()),
                },
            text: "CREER UN COMPTE"),
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
                "+212 600000000",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.sp,
                ),
              ),
            ),
            50.verticalSpace,
            PinCodeTextField(
              appContext: context,
              length: 6,
              onChanged: (pin) {},
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

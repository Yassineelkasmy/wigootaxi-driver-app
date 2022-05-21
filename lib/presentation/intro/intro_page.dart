import 'package:auto_route/auto_route.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wigootaxidriver/presentation/routes/router.gr.dart';
import 'package:wigootaxidriver/presentation/shared/logo.dart';
import 'package:wigootaxidriver/presentation/shared/submit_button.dart';
import 'package:wigootaxidriver/presentation/theme/colors.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        SystemNavigator.pop(animated: true);
        return false;
      },
      child: Scaffold(
          body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/images/intro.png',
              fit: BoxFit.cover,
            ),
          ),
          Positioned.fill(
            child: Container(
              color: FlexColor.blue.light.primary.withOpacity(0.8),
            ),
          ),
          Positioned(
            child: Align(
              alignment: Alignment.topCenter,
              child: buildLogo(),
            ),
          ),
          Positioned(
            child: Align(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 28.w,
                ),
                child: Text(
                  "Il est facile de ganger l'argent",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28.sp,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 28.h,
                  horizontal: 20.w,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                      width: double.maxFinite,
                      child: SubmitButton(
                        onPressed: () =>
                            AutoRouter.of(context).push(LoginPageRoute()),
                        text: "CONNEXION",
                      ),
                    ),
                    20.verticalSpace,
                    SizedBox(
                      width: double.maxFinite,
                      child: SubmitButton(
                        onPressed: () =>
                            AutoRouter.of(context).push(SubmissionPageRoute()),
                        text: "CRÉER UN COMPTE",
                        textColor: kPrimaryColor,
                        color: Colors.white,
                      ),
                    ),
                    // RichText(
                    //   textAlign: TextAlign.center,
                    //   text: TextSpan(
                    //     text: "Vous avez déjà un compte ? ",
                    //     style: TextStyle(
                    //       color: Colors.white,
                    //     ),
                    //     children: [
                    //       TextSpan(
                    //         text: "Devenir un chauffeur",
                    //         style: TextStyle(
                    //           color: Colors.deepOrange,
                    //           fontWeight: FontWeight.bold,
                    //         ),
                    //         recognizer: TapGestureRecognizer()
                    //           ..onTap = () => AutoRouter.of(context)
                    //               .replace(LoginPageRoute()),
                    //       )
                    //     ],
                    //   ),
                    // ),
                  ],
                ),
              ),
            ),
          )
        ],
      )),
    );
  }
}

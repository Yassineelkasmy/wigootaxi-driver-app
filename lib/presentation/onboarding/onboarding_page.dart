import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:wigootaxidriver/presentation/routes/router.gr.dart';
import 'package:wigootaxidriver/presentation/shared/submit_button.dart';

class OnBoardingPage extends StatefulWidget {
  @override
  _OnBoardingPageState createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(context) {
    AutoRouter.of(context).replace(IntroPageRoute());
  }

  Widget _buildImage(String assetName) {
    return Image.asset('assets/images/$assetName', width: 350.w);
  }

  @override
  Widget build(BuildContext context) {
    final bodyStyle = TextStyle(fontSize: 18.sp);

    final pageDecoration = PageDecoration(
      titleTextStyle: TextStyle(fontSize: 28.0.sp, fontWeight: FontWeight.w700),
      bodyTextStyle: bodyStyle,
      bodyPadding: EdgeInsets.fromLTRB(16.0.w, 0.0, 16.0.w, 16.0.h),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
    );

    return IntroductionScreen(
      key: introKey,
      globalBackgroundColor: Colors.white,

      globalFooter: Padding(
        padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 20.w),
        child: SizedBox(
          width: double.infinity,
          child: SubmitButton(
            text: 'Passer',
            onPressed: () => _onIntroEnd(context),
          ),
        ),
      ),
      pages: [
        PageViewModel(
          title: "Meilleur Service",
          body: "Nous nous soucions de chaque petit detail",
          image: _buildImage('img1.png'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Économiser votre argent",
          body: "Économiser votre argent avec nos pris abordables",
          image: _buildImage('img2.png'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Suivi en direct",
          body:
              "Suivi en direct en temp réel sur l'application une fois la commande est passée",
          image: _buildImage('img3.png'),
          decoration: pageDecoration,
        ),
      ],
      onDone: () => _onIntroEnd(context),
      //onSkip: () => _onIntroEnd(context), // You can override onSkip callback
      showSkipButton: false,
      skipOrBackFlex: 0,
      nextFlex: 0,
      showBackButton: true,
      //rtl: true, // Display as right-to-left
      back: const Icon(Icons.arrow_back),
      skip: Text('Sauter',
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 12.sp)),
      next: const Icon(Icons.arrow_forward),
      done: Text('Terminé',
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 12.sp)),
      curve: Curves.fastLinearToSlowEaseIn,
      controlsMargin: const EdgeInsets.all(16),
      controlsPadding: kIsWeb
          ? const EdgeInsets.all(12.0)
          : EdgeInsets.fromLTRB(8.0.w, 4.0.h, 8.0.w, 4.0.h),
      dotsDecorator: DotsDecorator(
        size: Size(10.0, 10.0),
        color: Color(0xFFBDBDBD),
        activeSize: Size(22.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0.r)),
        ),
      ),
      dotsContainerDecorator: ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0.r)),
        ),
      ),
    );
  }
}

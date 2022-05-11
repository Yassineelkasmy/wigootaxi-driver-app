import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wigootaxidriver/presentation/shared/logo.dart';
import 'package:wigootaxidriver/presentation/theme/colors.dart';
import 'package:wigootaxidriver/presentation/theme/spacings.dart';

class SubmissionSuccessPage extends StatelessWidget {
  const SubmissionSuccessPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: kPadding,
        child: Column(
          children: [
            buildLogo(white: false),
            20.h.verticalSpace,
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(
                  color: kPrimaryColor,
                  width: 3.0,
                ),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Icon(
                Icons.check,
                color: kPrimaryColor,
                size: 64,
              ),
            ),
            20.h.verticalSpace,
            Text(
              'Votre demande est en cours de traitement',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 18.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            10.h.verticalSpace,
            Text(
              'Nous nous assurerons que les documents sont corrects et vous répondrons dans les plus brefs délais.',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.grey,
                fontSize: 16.sp,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

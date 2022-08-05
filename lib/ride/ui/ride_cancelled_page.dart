import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wigootaxidriver/presentation/shared/submit_button.dart';
import 'package:wigootaxidriver/presentation/theme/colors.dart';

class RideCancelledPage extends StatelessWidget {
  const RideCancelledPage({
    Key? key,
    required this.message,
  }) : super(key: key);

  final String message;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Voyage annulé"),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 20.w,
          vertical: 20.h,
        ),
        child: Column(
          children: [
            20.h.verticalSpace,
            Text(
              message,
              style: TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            20.h.verticalSpace,
            SizedBox(
              width: double.maxFinite,
              child: SubmitButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                text: 'Daccord',
              ),
            ),
            20.h.verticalSpace,
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wigootaxidriver/presentation/submission/documents_submission_form.dart';
import 'package:wigootaxidriver/presentation/submission/driver_type_form.dart';
import 'package:wigootaxidriver/presentation/submission/signup_form.dart';

class SubmissionPage extends StatelessWidget {
  const SubmissionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
        child: SizedBox(
            width: double.maxFinite,
            child: PageView(
              children: [
                DriverTypeForm(),
                SignUpForm(),
                DocumentSubmissionForm(),
              ],
            )),
      ),
    );
  }
}

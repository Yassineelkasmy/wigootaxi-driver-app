import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wigootaxidriver/presentation/shared/logo.dart';
import 'package:wigootaxidriver/presentation/submission/widgets/step_indicator.dart';
import 'package:wigootaxidriver/presentation/theme/colors.dart';

class DocumentSubmissionForm extends StatelessWidget {
  const DocumentSubmissionForm({Key? key}) : super(key: key);

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
              Expanded(
                child: Divider(
                  color: kPrimaryColor,
                ),
              ),
              buildStepIndicator(3, true),
              5.w.horizontalSpace,
              Text(
                "Télécharger vos documents",
                style: TextStyle(
                  color: kPrimaryColor,
                  fontSize: 16.sp,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

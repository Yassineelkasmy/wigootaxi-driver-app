import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wigootaxidriver/extensions/extensions.dart';
import 'package:wigootaxidriver/presentation/shared/submit_button.dart';

showPopupConfirmation(
  BuildContext context, {
  required String title,
  required String body,
  Duration? duration,
  required void Function() onTap,
}) {
  showDialog(
    context: context,
    builder: (context) {
      if (duration != null) {
        Timer(duration, Navigator.of(context).pop);
      }
      return Dialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: SizedBox(
          // width: 250.w,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                title.toUpperCase(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.sp,
                ),
              ).paddingOnly(top: 20).paddingSymmetric(horizontal: 15),
              Text(
                body,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18.sp,
                ),
              ).paddingOnly(top: 16).paddingSymmetric(horizontal: 15),
              10.h.verticalSpace,
              Row(
                children: [
                  SubmitButton(
                    text: "Accepter",
                    // color: ,
                    textColor: Colors.white,
                    onPressed: onTap,
                  ).expandIt(),
                  const SizedBox(width: 20),
                  SubmitButton(
                    text: "Refuser",
                    textColor: Colors.white,
                    color: Colors.red,
                    onPressed: () => Navigator.pop(context),
                  ).expandIt(),
                ],
              ).paddingSymmetric(horizontal: 15),
            ],
          ),
        ),
      );
    },
  );
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wigootaxidriver/presentation/theme/colors.dart';

Widget buildHomeButton({
  required String text,
  required void Function() onPressed,
}) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      primary: Colors.white,
      shape: RoundedRectangleBorder(
        side: BorderSide(color: kPrimaryColor),
        borderRadius: BorderRadius.circular(10.r),
      ),
    ),
    onPressed: onPressed,
    child: Text(
      text,
      style: TextStyle(
        color: kPrimaryColor,
        fontWeight: FontWeight.bold,
        fontSize: 14.sp,
      ),
    ),
  );
}

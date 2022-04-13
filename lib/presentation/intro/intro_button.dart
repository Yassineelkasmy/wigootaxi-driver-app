import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget buildIntroButton({
  required String text,
  required Icon icon,
  required Color bgColor,
  required Color textColor,
  required void Function() onPressed,
}) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      primary: bgColor,
      padding: EdgeInsets.symmetric(vertical: 16.sp, horizontal: 10.w),
    ),
    onPressed: onPressed,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        icon,
        Text(
          text,
          style: TextStyle(
            color: textColor,
          ),
        )
      ],
    ),
  );
}

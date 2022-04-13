import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget buildTitle({
  required String text,
  Color? color,
  FontWeight? fontWeight,
}) {
  return Text(
    text,
    style: TextStyle(
      color: color ?? Colors.black,
      fontSize: 18.sp,
      fontWeight: fontWeight ?? FontWeight.bold,
    ),
  );
}

Widget buildSubTitle({
  required String text,
  Color? color,
  FontWeight? fontWeight,
}) {
  return Text(
    text,
    style: TextStyle(
      color: color ?? Colors.black,
      fontSize: 14.sp,
      fontWeight: fontWeight ?? FontWeight.bold,
    ),
  );
}

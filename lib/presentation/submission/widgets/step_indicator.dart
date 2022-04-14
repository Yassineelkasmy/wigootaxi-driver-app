import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wigootaxidriver/presentation/theme/colors.dart';

Widget buildStepIndicator(int step, bool isActive) {
  return Container(
    padding: EdgeInsets.all(12.r),
    decoration: BoxDecoration(
      border: isActive ? null : Border.all(color: Colors.grey),
      shape: BoxShape.circle,
      color: isActive ? kPrimaryColor : Colors.transparent,
    ),
    child: Text(
      '$step',
      style: TextStyle(
        color: isActive ? Colors.white : Colors.grey,
        fontSize: 18.sp,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}

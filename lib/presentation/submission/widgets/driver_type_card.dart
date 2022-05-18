import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wigootaxidriver/presentation/theme/colors.dart';

Widget buildDriverTypeCard({
  required String title,
  required String description,
  required void Function() onPressed,
}) {
  return InkWell(
    onTap: onPressed,
    child: Container(
      decoration: BoxDecoration(
        border: Border.all(color: kPrimaryColor),
        color: kPrimaryColor,
      ),
      child: Row(
        children: [
          Expanded(
            child: Container(
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 16.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    5.h.verticalSpace,
                    Text(
                      description,
                      style: TextStyle(fontSize: 16.sp, color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Material(
            child: InkWell(
              onTap: () {},
              child: SizedBox(
                height: double.maxFinite,
                width: 64.w,
                child: Center(
                  child: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                    size: 32,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

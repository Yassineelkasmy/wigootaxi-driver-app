import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    Key? key,
    required this.icon,
    required this.color,
    required this.text,
  }) : super(key: key);
  final String icon;
  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    final raduis = Radius.circular(15.r);
    return Padding(
      padding: EdgeInsets.only(right: 15.w),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(15.r),
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.only(
                topLeft: raduis,
                bottomLeft: raduis,
                bottomRight: raduis,
              ),
            ),
            child: Image.asset(
              'assets/icons/$icon.png',
              height: 36.h,
              width: 36.w,
            ),
          ),
          10.verticalSpace,
          Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black87,
              fontSize: 14.sp,
            ),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class SocialMedia extends StatelessWidget {
  const SocialMedia({
    Key? key,
    required this.onFacebookPressed,
    required this.onGooglePressed,
    required this.text,
  }) : super(key: key);
  final void Function() onFacebookPressed;
  final void Function() onGooglePressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        10.verticalSpace,
        Text(
          text,
          style: TextStyle(
            fontSize: 14.sp,
            color: Colors.grey,
            fontWeight: FontWeight.bold,
          ),
        ),
        10.verticalSpace,
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: onFacebookPressed,
              child: SvgPicture.asset(
                "assets/icons/facebook.svg",
                height: 32.h,
                width: 32.w,
                color: Colors.white,
              ),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 5.h),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.r),
                ),
              ),
            ),
            16.horizontalSpace,
            ElevatedButton(
              onPressed: onGooglePressed,
              child: SvgPicture.asset(
                "assets/icons/google.svg",
                height: 32.h,
                width: 32.w,
                color: Colors.white,
              ),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 5.h),
                primary: Colors.red,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.r),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

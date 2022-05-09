import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget buildLogo({bool white = true, BoxFit? fit}) {
  final String logoAsset = white ? 'logo_white.png' : 'logo_black.png';

  return white
      ? Image.asset(
          "assets/images/$logoAsset",
          fit: fit,
        )
      : Padding(
          padding: EdgeInsets.all(60.sp),
          child: Image.asset(
            "assets/images/$logoAsset",
            fit: fit,
            height: 0.25.sh,
          ),
        );
}

//temporarily

Widget buildSmallLogo({bool white = true, BoxFit? fit}) {
  final String logoAsset = white ? 'logo_white.png' : 'logo_black.png';

  return white
      ? Column(
          children: [
            20.h.verticalSpace,
            Text(
              'WIGOO TAXI',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            20.h.verticalSpace,
          ],
        )
      : Padding(
          padding: EdgeInsets.all(60.sp),
          child: Image.asset(
            "assets/images/$logoAsset",
            fit: fit,
            height: 0.25.sh,
          ),
        );
}

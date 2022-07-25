import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wigootaxidriver/driver/domain/driver_record.dart';
import 'package:wigootaxidriver/extensions/extensions.dart';
import 'package:wigootaxidriver/presentation/shared/submit_button.dart';

showPopupConfirmation(
  BuildContext context, {
  required BookingRecord bookingRecord,
  Duration? duration,
  required void Function() onTap,
}) {
  showDialog(
    context: context,
    builder: (context) {
      return Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Container(
          padding: EdgeInsets.symmetric(
            vertical: 10.h,
            horizontal: 10.w,
          ),
          // width: 250.w,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Nouvelle offre',
                style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              20.h.verticalSpace,
              Row(
                children: [
                  Image.asset(
                    'assets/icons/flag.png',
                    height: 24.h,
                    width: 24.w,
                  ),
                  4.w.horizontalSpace,
                  Text(
                    'Départ :',
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              5.h.verticalSpace,
              Text(
                bookingRecord.start_name,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16.sp,
                ),
              ),
              10.h.verticalSpace,
              Row(
                children: [
                  Image.asset(
                    'assets/icons/location.png',
                    height: 24.h,
                    width: 24.w,
                  ),
                  4.w.horizontalSpace,
                  Text(
                    'Destination :',
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              5.h.verticalSpace,
              Text(
                bookingRecord.dest_name,
                style: TextStyle(
                  fontSize: 16.sp,
                ),
              ),
              10.h.verticalSpace,
              Row(
                children: [
                  Image.asset(
                    'assets/icons/distance.png',
                    height: 24.h,
                    width: 24.w,
                  ),
                  4.w.horizontalSpace,
                  Text(
                    'Distance : ${bookingRecord.disttext}',
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              20.h.verticalSpace,
              Row(
                children: [
                  Image.asset(
                    'assets/icons/duration.png',
                    height: 24.h,
                    width: 24.w,
                  ),
                  4.w.horizontalSpace,
                  Text(
                    'Durée : ${bookingRecord.durtext}',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              20.h.verticalSpace,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: .15.sw,
                    width: .15.sw,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage('assets/images/user.jpg'),
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                  5.w.horizontalSpace,
                  Text(
                    bookingRecord.user.username,
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
              10.h.verticalSpace,
              Row(
                children: [
                  SubmitButton(
                    text: "Accepter",
                    // color: ,
                    textColor: Colors.white,
                    onPressed: () {
                      duration == null;
                      onTap();
                      Navigator.of(context).pop();
                    },
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

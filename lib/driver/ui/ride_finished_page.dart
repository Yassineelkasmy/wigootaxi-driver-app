import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wigootaxidriver/presentation/shared/submit_button.dart';
import 'package:wigootaxidriver/presentation/theme/colors.dart';

class RideFinishedPage extends StatelessWidget {
  const RideFinishedPage({
    Key? key,
    required this.startname,
    required this.destname,
    required this.totalDistance,
    required this.totalDuration,
    required this.totalPrice,
  }) : super(key: key);
  final String startname;
  final String destname;
  final double totalPrice;
  final int totalDistance;
  final int totalDuration;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Voyage terminé"),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 20.w,
          vertical: 20.h,
        ),
        child: Column(
          children: [
            20.h.verticalSpace,
            Text(
              'Détails du trajet',
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
              startname,
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
              destname,
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
                  'Distance : ${(totalDistance / 1000).toStringAsFixed(2)} km',
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
                  'Durée : ${Duration(seconds: totalDuration).inMinutes}:${(Duration(seconds: totalDuration).inSeconds % 60).toString().padLeft(2, '0')}',
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            20.h.verticalSpace,
            Expanded(
              child: Center(
                child: Text(
                  'Total: $totalPrice DH',
                  style: TextStyle(
                    fontSize: 22.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            20.h.verticalSpace,
            SizedBox(
              width: double.maxFinite,
              child: SubmitButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                text: 'Daccord',
              ),
            ),
            20.h.verticalSpace,
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wigootaxidriver/presentation/theme/colors.dart';
import 'package:wigootaxidriver/ride/domain/ride.dart';

class RideFinishedPage extends StatelessWidget {
  const RideFinishedPage({
    Key? key,
    required this.ride,
  }) : super(key: key);
  final Ride ride;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              ride.start_name!,
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
              ride.dest_name!,
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
                  'Distance : ${(ride.totalDistance! / 1000).toStringAsFixed(2)} km',
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
                  'Durée : ${Duration(seconds: ride.totalDuration!).inMinutes} min',
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
                Icon(
                  Icons.price_change,
                  color: kPrimaryColor,
                ),
                4.w.horizontalSpace,
                Text(
                  '${ride.totalPrice} DH',
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

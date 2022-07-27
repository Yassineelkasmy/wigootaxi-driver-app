import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wigootaxidriver/providers/ride_provider.dart';

class RideCounter extends HookConsumerWidget {
  const RideCounter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final rideState = ref.watch(rideProvider);

    return Align(
      alignment: Alignment.topCenter,
      child: Row(
        children: [
          Image.asset(
            'assets/icons/distance.png',
            height: 24.h,
            width: 24.w,
          ),
          4.w.horizontalSpace,
          Text(
            'Parcourue : ${rideState.distanceTravelled} Mètres',
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          4.w.horizontalSpace,
          Text(
            'Destination : ${rideState.driverDistanceFromDestination} Mètres',
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

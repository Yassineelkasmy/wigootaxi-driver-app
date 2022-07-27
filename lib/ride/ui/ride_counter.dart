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
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 10.w,
          vertical: 10.h,
        ),
        child: TextButton(
          style: TextButton.styleFrom(
            elevation: 8,
            backgroundColor: Colors.white,
            padding: EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 15,
            ),
          ),
          onPressed: () {},
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'assets/icons/distance.png',
                    height: 24.h,
                    width: 24.w,
                  ),
                  4.w.horizontalSpace,
                  Text(
                    'Estimée : ${rideState.currentRide!.disttext}',
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  4.w.horizontalSpace,
                  Text(
                    'Destination : ${(rideState.driverDistanceFromDestination / 1000).toStringAsFixed(1)} km',
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  4.w.horizontalSpace,
                  Text(
                    'Parcourue : ${rideState.distanceTravelled} m',
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.monetization_on_outlined,
                  ),
                  4.w.horizontalSpace,
                  Text(
                    'Estimé : ${((rideState.currentRide!.distance / 1000) * 20).toStringAsFixed(2)} DH',
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  4.w.horizontalSpace,
                  Text(
                    'Montant : ${((rideState.distanceTravelled / 1000) * 20).toStringAsFixed(2)} DH',
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  ),
                  // 4.w.horizontalSpace,
                  // Text(
                  //   'Parcourue : ${rideState.distanceTravelled} Mètres',
                  //   style: TextStyle(
                  //     fontSize: 14.sp,
                  //     fontWeight: FontWeight.bold,
                  //     color: Colors.green,
                  //   ),
                  // ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

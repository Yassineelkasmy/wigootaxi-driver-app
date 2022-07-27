import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:wigootaxidriver/application/providers/location/location_provider.dart';
import 'package:wigootaxidriver/providers/ride_provider.dart';

class RideLocationIndicator extends HookConsumerWidget {
  const RideLocationIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locationState = ref.watch(locationProvider);

    final rideState = ref.watch(rideProvider);
    return rideState.currentRide != null
        ? Align(
            alignment: Alignment.topCenter,
            child: Container(
              padding: EdgeInsets.only(
                top: 20.h,
              ),
              child: TextButton.icon(
                style: TextButton.styleFrom(
                  elevation: 8,
                  backgroundColor: Colors.white,
                  padding: EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 15,
                  ),
                ),
                onPressed: () {},
                icon: Icon(
                  Icons.social_distance,
                  size: 32,
                ),
                label: Text(
                  '${rideState.driverDistanceFromStart} Mètres',
                  style: TextStyle(
                    fontSize: 16.sp,
                  ),
                ),
              ),
            ),
          )
        : Center(
            child: !rideState.rideInitialized
                ? CircularProgressIndicator()
                : Icon(
                    Icons.person,
                  ),
          );
  }
}

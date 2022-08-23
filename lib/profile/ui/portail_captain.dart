import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:wigootaxidriver/presentation/theme/colors.dart';
import 'package:wigootaxidriver/providers/profile_provider.dart';

class PortailCaptain extends HookConsumerWidget {
  const PortailCaptain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final profileState = ref.watch(profileProvider);
    final profileController = ref.watch(profileProvider.notifier);
    final amountThreshold = profileState.metrics?.amountThreshold ?? 1;
    final totalRides = profileState.driverProfile?.totalRides ?? 0;
    final ridesIgnored = profileState.driverProfile?.ridesIgnored ?? 0;
    final ridesFinished = profileState.driverProfile?.ridesFinished ?? 0;
    final acceptingRideRate = ((totalRides - ridesIgnored) / totalRides) * 100;
    final successRideRate = (ridesFinished / totalRides) * 100;
    final revenueToPay = (profileState.driverProfile?.revenueToPay ?? 0);
    final tvaToPay = profileState.driverProfile?.tvaToPay ?? 0;
    final cashBlock = revenueToPay + tvaToPay;

    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Portail Captain",
              style: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.bold),
            ),
            5.h.verticalSpace,
            Text(
              profileState.driverProfile?.username ?? "-",
              style: TextStyle(fontSize: 16.sp, color: Colors.grey),
            ),
            20.h.verticalSpace,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                PortailInfo(
                  title: "Taux d'acceptation",
                  value: "${acceptingRideRate.toStringAsFixed(2)}%",
                  icon: Icon(
                    Icons.check,
                    color: kPrimaryColor,
                  ),
                ),
                PortailInfo(
                  title: "Taux de courses",
                  value: "${successRideRate.toStringAsFixed(2)}%",
                  icon: Icon(
                    Icons.check,
                    color: kPrimaryColor,
                  ),
                ),
              ],
            ),
            20.h.verticalSpace,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.warning,
                      color: Colors.orange,
                    ),
                    5.w.horizontalSpace,
                    Text(
                      'Suivi du blocage cash',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                Text(
                  '-${cashBlock.toStringAsFixed(2)} MAD',
                  style: TextStyle(
                    color: Colors.orange,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
            10.h.verticalSpace,
            LinearProgressIndicator(
              color: Colors.orange,
              backgroundColor: Colors.grey.shade300,
              value: cashBlock / amountThreshold,
            ),
            5.h.verticalSpace,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '-${amountThreshold.toStringAsFixed(2)} MAD',
                  style: TextStyle(
                    color: Colors.orange,
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

class PortailInfo extends StatelessWidget {
  const PortailInfo({
    Key? key,
    required this.title,
    required this.value,
    required this.icon,
  }) : super(key: key);
  final String value;
  final String title;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        icon,
        10.w.horizontalSpace,
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              value,
              style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            2.h.verticalSpace,
            Text(
              title,
              style: TextStyle(
                fontSize: 16.sp,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

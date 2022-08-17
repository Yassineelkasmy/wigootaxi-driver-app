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
    final totalRides = profileState.driverProfile?.totalRides ?? 0;
    final ridesIgnored = profileState.driverProfile?.ridesIgnored ?? 0;
    final ridesFinished = profileState.driverProfile?.ridesFinished ?? 0;
    final acceptingRideRate = ((totalRides - ridesIgnored) / totalRides) * 100;
    final successRideRate = (ridesFinished / totalRides) * 100;

    return Scaffold(
      appBar: AppBar(
        actions: [
          Row(
            children: [
              ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.person_outlined),
                  label: Text('Profil')),
              SizedBox(
                width: 10,
              ),
              ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.car_rental),
                  label: Text('Courses')),
            ],
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
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
            5.h.verticalSpace,
            LinearProgressIndicator(
              color: kPrimaryColor,
              backgroundColor: Colors.grey,
            )
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

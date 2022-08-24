import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:wigootaxidriver/presentation/routes/router.gr.dart';
import 'package:wigootaxidriver/presentation/theme/colors.dart';
import 'package:wigootaxidriver/profile/application/profile_event.dart';
import 'package:wigootaxidriver/providers/profile_provider.dart';
import 'package:wigootaxidriver/ride/domain/ride.dart';

class MyRidesPage extends HookConsumerWidget {
  MyRidesPage({Key? key}) : super(key: key);

  bool initilaized = false;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final profileState = ref.watch(profileProvider);
    final profileController = ref.read(profileProvider.notifier);
    final currentIndex = useState(0);

    if (!initilaized) {
      profileController.mapEventToState(ProfileEvent.finishedRidesRequested());
      profileController
          .mapEventToState(ProfileEvent.driverCancelledRidesRequested());
      profileController
          .mapEventToState(ProfileEvent.userCancelledRidesRequested());
      initilaized = true;
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Mes coures'),
      ),
      body: Column(
        children: [
          DefaultTabController(
            length: 2,
            child: TabBar(
              onTap: (index) {
                currentIndex.value = index;
              },
              indicatorColor: kPrimaryColor,
              labelColor: kPrimaryColor,
              unselectedLabelColor: Colors.black,
              tabs: [
                Tab(
                  text: 'Finis',
                ),
                Tab(
                  text: 'Annulés',
                ),
              ],
            ),
          ),
          Expanded(
            child: currentIndex.value == 0
                ? buildFinishedRides(profileState.finishedRides)
                : buildDriverCancelledRides(
                    profileState.driverCancelledRides +
                        profileState.userCancelledRides,
                  ),
          )
        ],
      ),
    );
  }
}

ListView buildFinishedRides(List<Ride> rides) {
  return ListView.builder(
    itemBuilder: (context, index) {
      final ride = rides[index];

      return ExpansionTile(
        title: Text(ride.dest_name!),
        subtitle: Row(
          children: [
            Text(ride.disttext),
            5.w.horizontalSpace,
            Text(ride.durtext),
          ],
        ),
        children: [
          ListTile(
            title: Text(
              'Départ: ${ride.start_name!}',
            ),
            leading: Image.asset(
              'assets/icons/flag.png',
              height: 24.h,
              width: 24.w,
            ),
          ),
          ListTile(
            title: Text(
              'Distance: ${(ride.totalDistance! / 1000).toStringAsFixed(2)} km',
            ),
            leading: Image.asset(
              'assets/icons/distance.png',
              height: 24.h,
              width: 24.w,
            ),
          ),
          ListTile(
            title: Text(
              'Durée : ${Duration(seconds: ride.totalDuration!).inMinutes} min',
            ),
            leading: Image.asset(
              'assets/icons/duration.png',
              height: 24.h,
              width: 24.w,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '${ride.totalPrice} MAD',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
                10.h.verticalSpace,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Gains',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '${ride.driverRevenue} MAD',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
                10.h.verticalSpace,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Tva',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '-${ride.tva} MAD',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
                10.h.verticalSpace,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Wigootaxi reçoit',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '-${ride.revenue} MAD',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
                10.h.verticalSpace,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Réservé à ',
                        ),
                        Text(
                          DateFormat('HH:mm').format(ride.ts),
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          'Chauffeur est arrivé à ',
                        ),
                        Text(
                          DateFormat('HH:mm').format(ride.driverArrivedAt!),
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    )
                  ],
                ),
                10.h.verticalSpace,
                Row(
                  children: [
                    Text(
                      'Terminé à ',
                    ),
                    Text(
                      DateFormat('HH:mm').format(ride.finishedAt!),
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
                10.h.verticalSpace,
                Row(
                  children: [
                    Text(
                      'Le ',
                    ),
                    Text(
                      DateFormat('yyyy/MM/dd').format(ride.ts),
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
                10.h.verticalSpace,
                TextButton.icon(
                  onPressed: () {
                    AutoRouter.of(context).push(MyRidePageRoute(
                      ride: ride,
                    ));
                  },
                  icon: Icon(Icons.route),
                  label: Text(
                    "Voir le trajet",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
        iconColor: kPrimaryColor,
        leading: Icon(
          Icons.drive_eta,
          color: kPrimaryColor,
        ),
      );
    },
    itemCount: rides.length,
  );
}

ListView buildDriverCancelledRides(List<Ride> rides) {
  return ListView.builder(
    itemBuilder: (context, index) {
      final ride = rides[index];

      return ExpansionTile(
        title: Text(ride.dest_name!),
        subtitle: Row(
          children: [
            Text(ride.disttext),
            5.w.horizontalSpace,
            Text(ride.durtext),
          ],
        ),
        children: [
          ListTile(
            title: Text(
              'Départ: ${ride.start_name!}',
            ),
            leading: Image.asset(
              'assets/icons/flag.png',
              height: 24.h,
              width: 24.w,
            ),
          ),
          ListTile(
            title: Text(
              'Distance estimée: ${ride.disttext}',
            ),
            leading: Image.asset(
              'assets/icons/distance.png',
              height: 24.h,
              width: 24.w,
            ),
          ),
          ListTile(
            title: Text(
              'Durée estimée: ${ride.durtext}',
            ),
            leading: Image.asset(
              'assets/icons/duration.png',
              height: 24.h,
              width: 24.w,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total estimé',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '${(ride.price_per_km * ride.distance / 1000)} MAD',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
                10.h.verticalSpace,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Gains estimés',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '${((ride.price_per_km * ride.distance / 1000) - (ride.price_per_km * ride.distance / 1000) * 0.02).toStringAsFixed(2)} MAD',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
                10.h.verticalSpace,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Annulé par',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      (ride.cancelledByDriver ?? false) ? 'Vous' : 'Client',
                      style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
                10.h.verticalSpace,
                Row(
                  children: [
                    Text(
                      'Le ',
                    ),
                    Text(
                      DateFormat('yyyy/MM/dd').format(ride.ts),
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ],
            ),
          )
        ],
        iconColor: kPrimaryColor,
        leading: Icon(
          Icons.warning,
          color: kPrimaryColor,
        ),
      );
    },
    itemCount: rides.length,
  );
}

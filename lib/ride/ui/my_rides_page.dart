import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
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
            length: 3,
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
                Tab(
                  text: 'Annulés par client',
                )
              ],
            ),
          ),
          Expanded(
            child: currentIndex.value == 0
                ? buildFinishedRides(profileState.finishedRides)
                : currentIndex.value == 1
                    ? buildDriverCancelledRides(
                        profileState.driverCancelledRides)
                    : buildUserCancelledRides(
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
            title: Text('Départ: ${ride.start_name!}'),
            leading: Image.asset(
              'assets/icons/flag.png',
              height: 24.h,
              width: 24.w,
            ),
          ),
          ListTile(
            title: Text(
                'Distance: ${(ride.totalDistance! / 1000).toStringAsFixed(2)} km'),
            leading: Image.asset(
              'assets/icons/distance.png',
              height: 24.h,
              width: 24.w,
            ),
          ),
          Row(
            children: [Text('data')],
          ),
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
      // ListTile(
      //   title: Text(ride.dest_name!),
      //   subtitle: Text(ride.start_name!),
      //   trailing: Icon(Icons.warning),
      // );
      return ExpansionTile(
        title: Text(ride.dest_name!),
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

ListView buildUserCancelledRides(List<Ride> rides) {
  return ListView.builder(
    itemBuilder: (context, index) {
      final ride = rides[index];

      return ListTile(
        title: Text(ride.dest_name!),
        subtitle: Text(ride.start_name!),
        trailing: Icon(Icons.warning),
      );
    },
    itemCount: rides.length,
  );
}

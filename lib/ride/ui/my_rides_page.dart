import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
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

      return ListTile(
        title: Text(ride.start_name!),
      );
    },
    itemCount: rides.length,
  );
}

ListView buildDriverCancelledRides(List<Ride> rides) {
  return ListView.builder(
    itemBuilder: (context, index) {
      final ride = rides[index];

      return ListTile(
        title: Text(ride.start_name!),
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
        title: Text(ride.start_name!),
      );
    },
    itemCount: rides.length,
  );
}

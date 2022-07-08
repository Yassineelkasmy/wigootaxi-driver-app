import 'package:audioplayers/audioplayers.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:in_app_notification/in_app_notification.dart';
import 'package:wigootaxidriver/application/location/location_event.dart';
import 'package:wigootaxidriver/application/providers/driver/driver_provider.dart';
import 'package:wigootaxidriver/application/providers/location/location_provider.dart';
import 'package:rive/rive.dart';
import 'package:wigootaxidriver/driver/application/driver_event.dart';
import 'package:wigootaxidriver/driver/application/driver_state.dart';
import 'package:wigootaxidriver/presentation/home/pick_location/location_map.dart';
import 'package:wigootaxidriver/presentation/routes/router.gr.dart';
import 'package:wigootaxidriver/presentation/shared/in_app_notfication.dart';
import 'package:wigootaxidriver/presentation/shared/popup.dart';
import 'package:wigootaxidriver/presentation/shared/submit_button.dart';
import 'package:wigootaxidriver/presentation/theme/colors.dart';
import 'package:wigootaxidriver/presentation/theme/spacings.dart';
import 'package:wigootaxidriver/providers/ride_provider.dart';

class ActivateLocationOrMapPage extends HookConsumerWidget {
  ActivateLocationOrMapPage({Key? key}) : super(key: key);
  final audioPlayer = AudioPlayer();
  final player = AudioCache(prefix: 'assets/sounds/');

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locationState = ref.watch(locationProvider);
    final locationController = ref.watch(locationProvider.notifier);
    final driverController = ref.watch(driverProvider.notifier);
    final driverState = ref.watch(driverProvider);
    final rideController = ref.watch(rideProvider.notifier);

    ref.listen<DriverState>(
      driverProvider,
      (previous, next) async {
        final prevRecord = previous?.driverRecord;
        final nextRecord = next.driverRecord;
        if (prevRecord?.booking_call == null &&
            (prevRecord?.booking_call != nextRecord?.booking_call)) {
          if (nextRecord?.booking_call != null) {
            showPopupConfirmation(
              context,
              duration: Duration(seconds: 10),
              title: 'Offre de trajet',
              body:
                  '${nextRecord?.booking?.user.username}\n ${nextRecord?.booking?.user.phone}',
              onTap: () async {
                await driverController.mapEventToState(
                  const DriverEvent.rideAccepted(),
                );
              },
            );
          }
        }
      },
    );
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (context) {
            return IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: Icon(Icons.menu),
            );
          },
        ),
        actions: [
          if (driverState.isOnline)
            Row(
              children: [
                Text('En ligne'),
                IconButton(
                  onPressed: () async {
                    await driverController.mapEventToState(
                      const DriverEvent.onlineDeactivated(),
                    );
                    InAppNotification.show(
                      duration: Duration(seconds: 5),
                      child: InnerNotifications(
                        message:
                            'Vous êtes hors ligne et pouvez et ne pouvez pas accepter les offres',
                        isScuccess: false,
                      ),
                      context: context,
                    );
                  },
                  icon: Icon(Icons.sensors),
                ),
              ],
            ),
          if (!driverState.isOnline)
            Row(
              children: [
                Text('Déconnecté'),
                IconButton(
                  onPressed: () async {
                    await driverController.mapEventToState(
                      const DriverEvent.onlineActivated(),
                    );
                    InAppNotification.show(
                      duration: Duration(seconds: 5),
                      child: InnerNotifications(
                        message:
                            'Vous êtes en ligne et prêt à accepter des courses',
                        isScuccess: true,
                      ),
                      context: context,
                    );
                  },
                  icon: Icon(Icons.sensors_off),
                ),
              ],
            ),
        ],
      ),
      drawer: Container(
        color: kPrimaryColor,
        padding: EdgeInsets.symmetric(vertical: 40.h, horizontal: 30.w),
        height: 1.sh,
        width: 0.75.sw,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  height: .15.sw,
                  width: .15.sw,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: NetworkImage("user.photoURL"),
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
                10.horizontalSpace,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Bonjour,",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "user.displayName",
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            20.verticalSpace,
            ListTile(
              onTap: () {
                AutoRouter.of(context).push(PortailCaptainRoute());
              },
              leading: Icon(
                Icons.person,
                color: Colors.white,
              ),
              horizontalTitleGap: 10.w,
              title: Text(
                "Portail Captain",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.payment,
                color: Colors.white,
              ),
              horizontalTitleGap: 10.w,
              title: Text(
                "Portefeuille",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(
                Icons.history_outlined,
                color: Colors.white,
              ),
              horizontalTitleGap: 10.w,
              title: Text(
                "Mes Courses",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.settings,
                color: Colors.white,
              ),
              horizontalTitleGap: 10.w,
              title: Text(
                "Réglages",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(
                Icons.logout,
                color: Colors.white,
              ),
              horizontalTitleGap: 10.w,
              title: Text(
                "Se déconnecter",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
      body: locationState.position != null
          ? SizedBox(
              height: double.maxFinite,
              width: double.maxFinite,
              child: Column(
                children: [
                  Expanded(
                    child: Stack(
                      fit: StackFit.passthrough,
                      children: [
                        Positioned.fill(
                          // bottom: .2.sh,
                          child: LocationMap(
                            lat: locationState.position!.latitude,
                            long: locationState.position!.longitude,
                            onCameraIdle: () {},
                            onCameraMove: (cameraPosition) {},
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          : SizedBox(
              height: double.maxFinite,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 20.w,
                  vertical: 20.h,
                ),
                child: Column(
                  children: [
                    40.h.verticalSpace,
                    Text(
                      "Pour une meilleure expérience, donnez-nous accès à votre position actuelle via votre GPS mobile",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16.sp,
                      ),
                    ),
                    20.h.verticalSpace,
                    SizedBox(
                      width: double.maxFinite,
                      child: Padding(
                        padding: kPadding,
                        child: SubmitButton(
                          onPressed: () {
                            locationController.mapEventToState(
                              LocationEvent.locationRequested(),
                            );
                          },
                          text: "Autoriser l'accès au GPS",
                        ),
                      ),
                    ),
                    MapAnimation(),
                  ],
                ),
              ),
            ),
    );
  }
}

class MapAnimation extends StatefulWidget {
  const MapAnimation({Key? key}) : super(key: key);

  @override
  State<MapAnimation> createState() => _MapAnimationState();
}

class _MapAnimationState extends State<MapAnimation> {
  late RiveAnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = SimpleAnimation('map');
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 0.3.sh,
        child: Center(
          child: RiveAnimation.asset(
            'assets/animations/map.riv',
            controllers: [_controller],
            fit: BoxFit.fitHeight,
          ),
        ),
      ),
    );
  }
}

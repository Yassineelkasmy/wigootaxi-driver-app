import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:wigootaxidriver/application/location/location_event.dart';
import 'package:wigootaxidriver/application/providers/location/location_provider.dart';
import 'package:wigootaxidriver/presentation/home/pick_location/location_map.dart';
import 'package:rive/rive.dart';
import 'package:wigootaxidriver/presentation/shared/submit_button.dart';
import 'package:wigootaxidriver/presentation/theme/spacings.dart';

class ActivateLocationPage extends HookConsumerWidget {
  const ActivateLocationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locationState = ref.watch(locationProvider);
    final locationController = ref.watch(locationProvider.notifier);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.black),
        centerTitle: false,
        title: Text(
          "Position de départ",
          style: TextStyle(color: Colors.black),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: locationState.locationData != null
          ? ElevatedButton(
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.r),
              )),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 10.h,
                  horizontal: 20.w,
                ),
                child: Text(
                  "Continuer",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16.sp,
                  ),
                ),
              ),
              onPressed: () {},
            )
          : null,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          if (locationState.locationData == null)
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
              child: Column(
                children: [
                  Text(
                    "Pour une meilleure expérience, donnez-nous accès à votre position actuelle via votre GPS mobile",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16.sp,
                    ),
                  ),
                  20.verticalSpace,
                ],
              ),
            ),
          if (locationState.locationData == null) ...[
            MapAnimation(),
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
          ],
          20.verticalSpace,
          if (locationState.locationData != null)
            Expanded(
              child: LocationMap(
                locationData: locationState.locationData!,
              ),
            ),
        ],
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
    final size = MediaQuery.of(context).size;

    return Expanded(
      child: SizedBox(
        height: 0.5.sh,
        width: size.width,
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

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:location/location.dart';
import 'package:wigootaxidriver/application/location/location_event.dart';
import 'package:wigootaxidriver/application/location/location_state.dart';

class LocationController extends StateNotifier<LocationState> {
  LocationController() : super(LocationState.initial());

  final Location location = Location();

  Future mapEventToState(LocationEvent event) {
    return event.map(
      locationRequested: (locationRequested) async {
        state = state.copyWith(isRequesting: true);
        bool _serviceEnabled;
        PermissionStatus _permissionGranted;
        LocationData _locationData;

        _serviceEnabled = await location.serviceEnabled();
        if (!_serviceEnabled) {
          _serviceEnabled = await location.requestService();
          if (!_serviceEnabled) {
            return;
          }
        }
        _permissionGranted = await location.hasPermission();
        if (_permissionGranted == PermissionStatus.denied) {
          _permissionGranted = await location.requestPermission();
          if (_permissionGranted != PermissionStatus.granted) {
            return;
          }
        }
        _locationData = await location.getLocation();
        state = state.copyWith(
          locationData: _locationData,
          isRequesting: false,
        );

        print(_locationData);
      },
      locationDetected: (locationDetected) async {},
      permessionDenied: (permessionDenied) async {},
    );
  }
}

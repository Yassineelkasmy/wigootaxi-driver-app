import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';

class LocationMap extends StatefulWidget {
  const LocationMap({
    Key? key,
    required this.locationData,
  }) : super(key: key);
  final LocationData locationData;

  @override
  State<LocationMap> createState() => _LocationMapState();
}

class _LocationMapState extends State<LocationMap> {
  Set<Marker> markers = Set();

  initMarker() async {
    final marker = await BitmapDescriptor.fromAssetImage(
      ImageConfiguration(
        size: Size(32, 32),
      ),
      "assets/icons/taxi-stop.png",
    );
    markers.add(
      Marker(
        markerId: MarkerId("position"),
        position: LatLng(
          widget.locationData.latitude!,
          widget.locationData.longitude!,
        ),
        icon: marker,
        draggable: true,
      ),
    );

    setState(() {});
  }

  @override
  void initState() {
    initMarker();
    print(widget.locationData);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    initMarker();
    final cameraPosition = CameraPosition(
      target: LatLng(
        widget.locationData.latitude!,
        widget.locationData.longitude!,
      ),
      zoom: 16,
    );

    return Stack(
      children: [
        Positioned.fill(
          child: GoogleMap(
            initialCameraPosition: cameraPosition,
            markers: markers,
          ),
        ),
      ],
    );
  }
}

import 'dart:typed_data';
import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class LocationMap extends ConsumerStatefulWidget {
  const LocationMap({
    Key? key,
    required this.lat,
    required this.long,
    required this.onCameraMove,
    required this.onCameraIdle,
  }) : super(key: key);
  final double long;
  final double lat;
  final void Function(CameraPosition) onCameraMove;
  final void Function() onCameraIdle;

  @override
  LocationMapState createState() => LocationMapState();
}

class LocationMapState extends ConsumerState<LocationMap> {
  late GoogleMapController _googleMapController;
  Map<PolylineId, Polyline> polylines = {};
  final Set<Marker> _markers = {};
  List<LatLng> polylineCoordinates = [];

  Future<Uint8List> getBytesFromAsset(
      {required String path, required int width}) async {
    ByteData data = await rootBundle.load(path);
    ui.Codec codec = await ui.instantiateImageCodec(data.buffer.asUint8List(),
        targetWidth: width);
    ui.FrameInfo fi = await codec.getNextFrame();
    return (await fi.image.toByteData(format: ui.ImageByteFormat.png))!
        .buffer
        .asUint8List();
  }

  void _setMapFitToTour(Set<Polyline> p) {
    double minLat = p.first.points.first.latitude;
    double minLong = p.first.points.first.longitude;
    double maxLat = p.first.points.first.latitude;
    double maxLong = p.first.points.first.longitude;
    p.forEach((poly) {
      poly.points.forEach((point) {
        if (point.latitude < minLat) minLat = point.latitude;
        if (point.latitude > maxLat) maxLat = point.latitude;
        if (point.longitude < minLong) minLong = point.longitude;
        if (point.longitude > maxLong) maxLong = point.longitude;
      });
    });
    _googleMapController.moveCamera(
      CameraUpdate.newLatLngBounds(
        LatLngBounds(
            southwest: LatLng(minLat, minLong),
            northeast: LatLng(maxLat, maxLong)),
        50,
      ),
    );
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    //Markers listener

    final cameraPosition = CameraPosition(
      target: LatLng(
        widget.lat,
        widget.long,
      ),
      zoom: 10,
    );

    return Stack(
      children: [
        Positioned.fill(
          child: GoogleMap(
            markers: _markers,
            onMapCreated: (mapController) {
              _googleMapController = mapController;
            },
            mapType: MapType.normal,
            buildingsEnabled: false,
            zoomGesturesEnabled: true,
            zoomControlsEnabled: false,
            myLocationEnabled: true,
            indoorViewEnabled: true,
            polylines: Set<Polyline>.of(polylines.values),
            initialCameraPosition: cameraPosition,
            onCameraIdle: widget.onCameraIdle,
            onCameraMove: (positon) {
              widget.onCameraMove(positon);
            },
          ),
        ),
      ],
    );
  }
}

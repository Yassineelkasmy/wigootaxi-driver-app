import 'dart:typed_data';
import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:wigootaxidriver/presentation/theme/colors.dart';
import 'package:wigootaxidriver/ride/domain/ride.dart';
import 'package:wigootaxidriver/shared/helpers/serialize_coordinates_path.dart';

class MyRidePage extends StatefulWidget {
  const MyRidePage({
    Key? key,
    required this.ride,
  }) : super(key: key);
  final Ride ride;

  @override
  State<MyRidePage> createState() => _MyRidePageState();
}

class _MyRidePageState extends State<MyRidePage> {
  late GoogleMapController _googleMapController;
  late PolylinePoints polylinePoints;
  Map<PolylineId, Polyline> polylines = {};
  final Set<Marker> _markers = {};
  List<LatLng> polylineCoordinates = [];
  @override
  void initState() {
    LatLng startLatLng = LatLng(
      widget.ride.startLat!,
      widget.ride.startLng!,
    );

    LatLng destinationLatLng = LatLng(
      widget.ride.destinationLat!,
      widget.ride.destinationLng!,
    );
    addMarker(
      destinationLatLng,
      null,
      null,
      'dropoff',
    );

    addMarker(
      startLatLng,
      null,
      null,
      'pickup',
    );

    _createPolylines(
      startLatLng.latitude,
      startLatLng.longitude,
      destinationLatLng.latitude,
      destinationLatLng.longitude,
    ).then((value) {
      _createRoutePolyLines(
        stringPathToCoordinates(
          widget.ride.path,
        ),
      );

      _setMapFitToTour(Set<Polyline>.of(polylines.values));
      setState(() {});
    });

    super.initState();
  }

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

  void check(
      CameraUpdate cameraUpdate, GoogleMapController mapController) async {
    mapController.animateCamera(cameraUpdate);
    _googleMapController.animateCamera(cameraUpdate);
    LatLngBounds l1 = await mapController.getVisibleRegion();
    LatLngBounds l2 = await mapController.getVisibleRegion();
    if (l1.southwest.latitude == -90 || l2.southwest.latitude == -90) {
      check(cameraUpdate, mapController);
    }
  }

  void addMarker(
    LatLng mLatLng,
    String? mTitle,
    String? mDescription,
    String id,
  ) async {
    String assetPath = '';
    if (id == 'dropoff') {
      assetPath = 'assets/icons/flag.png';
    } else if (id == 'pickup') {
      assetPath = 'assets/icons/location-pin.png';
    } else {
      assetPath = 'assets/icons/car1.png';
    }

    final Uint8List markerBytes = await getBytesFromAsset(
      path: assetPath,
      width: 80,
    );
    _markers.add(
      Marker(
        markerId: MarkerId(id),
        position: mLatLng,
        infoWindow: InfoWindow(
          title: mTitle,
          snippet: mDescription,
        ),
        icon: BitmapDescriptor.fromBytes(markerBytes),
      ),
    );

    setState(() {});
  }

  _createRoutePolyLines(List<LatLng> cooridnates) {
    PolylineId id = PolylineId('route');
    Polyline polyline = Polyline(
      polylineId: id,
      color: Colors.green,
      points: cooridnates,
      width: 3,
    );
    polylines[id] = polyline;
  }

  Future _createPolylines(
    double startLat,
    double startLong,
    double endLat,
    double endLong,
  ) async {
    polylinePoints = PolylinePoints();
    PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
      'AIzaSyBcUiq4ME8Hc3N7nsoDs0YYC2e4nWwyghU', // Google Maps API Key
      PointLatLng(startLat, startLong),
      PointLatLng(endLat, endLong),
      travelMode: TravelMode.driving,
      avoidTolls: true,
    );
    if (result.points.isNotEmpty) {
      polylineCoordinates = [];
      polylines.clear();
      result.points.forEach((PointLatLng point) {
        polylineCoordinates.add(LatLng(point.latitude, point.longitude));
      });
    }

    PolylineId id = PolylineId('poly');
    Polyline polyline = Polyline(
      polylineId: id,
      color: kPrimaryColor,
      points: polylineCoordinates,
      width: 3,
    );
    polylines[id] = polyline;
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
        100,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final cameraPosition = CameraPosition(
      target: LatLng(
        widget.ride.destinationLat!,
        widget.ride.destinationLng!,
      ),
      zoom: 18,
    );

    return Scaffold(
        appBar: AppBar(
          title: Text('Trajet détaillé'),
        ),
        body: Column(
          children: [
            Expanded(
              child: GoogleMap(
                markers: _markers,
                initialCameraPosition: cameraPosition,
                onMapCreated: (mapController) {
                  _googleMapController = mapController;
                },
                mapType: MapType.normal,
                buildingsEnabled: false,
                zoomGesturesEnabled: true,
                zoomControlsEnabled: true,
                myLocationEnabled: true,
                indoorViewEnabled: true,
                polylines: Set<Polyline>.of(polylines.values),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20.w,
                vertical: 10.h,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.route,
                        color: Colors.green,
                      ),
                      Text(
                        'Trajet suivi',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                  5.h.verticalSpace,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.route,
                        color: kPrimaryColor,
                      ),
                      Text(
                        'Trajet estimé',
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
        ));
  }
}

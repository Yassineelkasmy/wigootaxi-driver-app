import 'dart:typed_data';
import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:wigootaxidriver/presentation/theme/colors.dart';
import 'package:wigootaxidriver/providers/ride_provider.dart';
import 'package:wigootaxidriver/ride/application/ride_state.dart';
import 'package:wigootaxidriver/ride/ui/ride_location_indicator.dart';

class RideMap extends ConsumerStatefulWidget {
  const RideMap({
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
  RideMapState createState() => RideMapState();
}

class RideMapState extends ConsumerState<RideMap> {
  late GoogleMapController _googleMapController;
  late PolylinePoints polylinePoints;
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
  }

  _createPolylines(
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

    ref.listen<RideState>(
      rideProvider,
      (previous, next) async {
        if (previous?.currentRide?.currentDriverLocation !=
                next.currentRide?.currentDriverLocation &&
            next.currentRide != null) {
          LatLng driverLatLng = LatLng(
            next.currentRide!.driverLat!,
            next.currentRide!.driverLng!,
          );

          LatLng userLatLng = LatLng(
            next.currentRide!.userLat!,
            next.currentRide!.userLng!,
          );
          // _markers.removeWhere(
          //   (mrk) => mrk.mapsId.value == next.currentRide!.driverUid,
          // );
          addMarker(
            driverLatLng,
            null,
            null,
            // next.dropoffPlace!.vicinity,
            next.currentRide!.driverUid,
          );

          LatLngBounds bound;
          if (driverLatLng.latitude > userLatLng.latitude &&
              driverLatLng.longitude > userLatLng.longitude) {
            bound =
                LatLngBounds(southwest: userLatLng, northeast: driverLatLng);
          } else if (driverLatLng.longitude > userLatLng.longitude) {
            bound = LatLngBounds(
                southwest: LatLng(driverLatLng.latitude, userLatLng.longitude),
                northeast: LatLng(userLatLng.latitude, driverLatLng.longitude));
          } else if (driverLatLng.latitude > userLatLng.latitude) {
            bound = LatLngBounds(
                southwest: LatLng(userLatLng.latitude, driverLatLng.longitude),
                northeast: LatLng(driverLatLng.latitude, userLatLng.longitude));
          } else {
            bound =
                LatLngBounds(southwest: driverLatLng, northeast: userLatLng);
          }
          await _createPolylines(
            driverLatLng.latitude,
            driverLatLng.longitude,
            userLatLng.latitude,
            userLatLng.longitude,
          );

          // CameraUpdate u2 = CameraUpdate.newLatLngBounds(bound, 70);
          // _googleMapController.animateCamera(u2).then((void v) {
          //   check(u2, _googleMapController);
          // });
          _setMapFitToTour(Set<Polyline>.of(polylines.values));
          setState(() {});
        }
      },
    );

    final cameraPosition = CameraPosition(
      target: LatLng(
        widget.lat,
        widget.long,
      ),
      zoom: 18,
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
            zoomControlsEnabled: true,
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
        Positioned.fill(
          child: RideLocationIndicator(),
        ),
      ],
    );
  }
}

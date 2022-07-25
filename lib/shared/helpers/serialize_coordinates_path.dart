import 'package:google_maps_flutter/google_maps_flutter.dart';

List<LatLng> stringPathToCoordinates(List<String> path) {
  return path.map((pointStr) {
    final strPoints = pointStr.split(',');
    return LatLng(
      double.tryParse(strPoints[0])!,
      double.tryParse(strPoints[1])!,
    );
  }).toList();
}

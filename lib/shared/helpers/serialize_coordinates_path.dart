import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:wigootaxidriver/shared/helpers/latlng_distance.dart';

List<LatLng> stringPathToCoordinates(List<String> path) {
  return path.map((pointStr) {
    final strPoints = pointStr.split(',');
    return LatLng(
      double.tryParse(strPoints[0])!,
      double.tryParse(strPoints[1])!,
    );
  }).toList();
}

// Path distance in meters
int pathDistance(List<LatLng> path) {
  int distance = 0;
  for (int i = 1; i <= path.length - 1; i++) {
    final pt1 = path[i - 1];
    final pt2 = path[i];
    distance += (calculateDistance(
              pt1.latitude,
              pt1.longitude,
              pt2.latitude,
              pt2.longitude,
            ) *
            1000)
        .round();
  }

  return distance;
}

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:wigootaxidriver/ride/domain/ride.dart';

class RideService {
  final collectionRef = FirebaseFirestore.instance.collection('rides');

  Stream<Ride> rideStream({required String rideId}) {
    final ride = collectionRef.doc(rideId).snapshots().asyncMap((rideDoc) {
      print("riiiiiiiiide ${rideDoc}");
      final driverLocation =
          rideDoc.get('currentDriverLocation')?['geopoint'] as GeoPoint?;
      final userLocation =
          rideDoc.get('currentUserLocation')?['geopoint'] as GeoPoint?;

      return Ride.fromJson(
        rideDoc.data()!
          ..putIfAbsent(
            'userLat',
            () => userLocation?.latitude,
          )
          ..putIfAbsent('userLng', () => userLocation?.longitude)
          ..putIfAbsent('driverLat', () => driverLocation?.latitude)
          ..putIfAbsent('driverLng', () => driverLocation?.longitude),
      );
    });
    return ride;
  }
}

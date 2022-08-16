import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:wigootaxidriver/driver/domain/driver_record.dart';
import 'package:wigootaxidriver/profile/domain/driver_profile.dart';
import 'package:wigootaxidriver/ride/domain/ride.dart';
import 'package:wigootaxidriver/ride/domain/ride_failure.dart';

class ProfileService {
  ProfileService() {
    profileRef = FirebaseFirestore.instance
        .collection('drivers')
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .collection('rides');
  }

  late CollectionReference<Map<String, dynamic>> profileRef;

  Future<Either<RideFailure, List<Ride>>> getRidesWithCanncellOption({
    required String option,
  }) async {
    try {
      final ridesData = await profileRef
          .where(
            option,
            isEqualTo: true,
          )
          .get();
      print(ridesData.docs.first.data());
      final rides = ridesData.docs.map(docDataToRide).toList();
      return right(rides);
    } catch (e) {
      print(e);
      return left(RideFailure.serverError());
    }
  }

  Future<Either<RideFailure, DriverProfile>> getDriverRecord() async {
    final uid = FirebaseAuth.instance.currentUser!.uid;

    try {
      final driverDoc =
          await FirebaseFirestore.instance.collection('drivers').doc(uid).get();
      return right(DriverProfile.fromJson(driverDoc.data()!));
    } catch (e) {
      return left(RideFailure.serverError());
    }
  }
}

Ride docDataToRide(QueryDocumentSnapshot<Map<String, dynamic>> rideDoc) {
  final destinationLocation =
      rideDoc.get('destination')?['geopoint'] as GeoPoint?;
  final startLocation = rideDoc.get('start')?['geopoint'] as GeoPoint?;

  return Ride.fromJson(
    rideDoc.data()
      ..putIfAbsent('destinationLng', () => destinationLocation?.longitude)
      ..putIfAbsent('destinationLat', () => destinationLocation?.latitude)
      ..putIfAbsent('startLng', () => startLocation?.longitude)
      ..putIfAbsent('startLat', () => startLocation?.latitude)
      ..putIfAbsent('id', () => rideDoc.id),
  );
}

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:geoflutterfire/geoflutterfire.dart';

class DriverService {
  final geo = Geoflutterfire();
  final docRef = FirebaseFirestore.instance
      .collection('drivers')
      .doc(FirebaseAuth.instance.currentUser!.uid);
  updateLocation({
    required double lat,
    required double lng,
  }) async {
    try {
      await docRef.update(
        {
          'location': geo
              .point(
                latitude: lat,
                longitude: lng,
              )
              .data,
        },
      );
    } catch (e) {
      print(e);
    }
  }
}

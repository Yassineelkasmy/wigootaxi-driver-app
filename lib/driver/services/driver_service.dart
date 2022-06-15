import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:geoflutterfire/geoflutterfire.dart';

class DriverService {
  DriverService() {
    docRef = FirebaseFirestore.instance
        .collection('drivers')
        .doc(FirebaseAuth.instance.currentUser!.uid);
  }
  final geo = Geoflutterfire();
  late DocumentReference<Map<String, dynamic>> docRef;

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
          'lastTs': FieldValue.serverTimestamp(),
        },
      );
    } catch (e) {
      print(e);
    }
  }
}

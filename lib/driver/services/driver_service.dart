import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:geoflutterfire/geoflutterfire.dart';
import 'package:wigootaxidriver/driver/domain/driver_record.dart';

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
          'lastSeconds': (DateTime.now().millisecondsSinceEpoch / 1000).round(),
        },
      );
    } catch (e) {
      print(e);
    }
  }

  Stream<DriverRecord> driverRecordStream({required String userUid}) {
    final driverDocStream = FirebaseFirestore.instance
        .collection('drivers')
        .doc(userUid)
        .snapshots()
        .asyncMap((driverDoc) {
      final location = driverDoc.get('location')['geopoint'] as GeoPoint;
      final driverRecord = DriverRecord.fromJson(
        driverDoc.data()!
          ..putIfAbsent('id', () => userUid)
          ..putIfAbsent('lng', () => location.longitude)
          ..putIfAbsent(
            'lat',
            () => location.latitude,
          ),
      );

      return driverRecord;
    });

    return driverDocStream;
  }
}

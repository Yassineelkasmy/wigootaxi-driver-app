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
    required bool isDriving,
    String? currentRideId,
  }) async {
    final lastTs = FieldValue.serverTimestamp();
    final lastSeconds = (DateTime.now().millisecondsSinceEpoch / 1000).round();
    final location = geo
        .point(
          latitude: lat,
          longitude: lng,
        )
        .data;
    try {
      await docRef.update(
        {
          'location': location,
          'lastTs': lastTs,
          'lastSeconds': lastSeconds,
        },
      );
      if (currentRideId != null) {
        if (isDriving) {
          FirebaseFirestore.instance
              .collection('rides')
              .doc(currentRideId)
              .update(
            {
              'currentDriverLocation': location,
              'lastDriverTs': lastTs,
              'lastDriverSeconds': lastSeconds,
              'path': FieldValue.arrayUnion(["$lat,$lng"]),
            },
          );
        } else {
          FirebaseFirestore.instance
              .collection('rides')
              .doc(currentRideId)
              .update(
            {
              'currentDriverLocation': location,
              'lastDriverTs': lastTs,
              'lastDriverSeconds': lastSeconds,
            },
          );
        }
      }
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

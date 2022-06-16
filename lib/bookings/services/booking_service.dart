import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:geoflutterfire/geoflutterfire.dart';
import 'package:wigootaxidriver/booking/domain/booking.dart';
import 'package:wigootaxidriver/booking/domain/booking_failure.dart';
import 'package:wigootaxidriver/booking/domain/ride.dart';

class BookingsService {
  final geo = Geoflutterfire();

  final firestore = FirebaseFirestore.instance;
  Future<Either<BookingFailure, Unit>> bookRide({
    required Ride ride,
    required String userUid,
    required String phone,
    required String driverId,
  }) async {
    final rideData = {
      'start_place_id': ride.pickUp.placeId,
      'start_name': ride.pickUp.name,
      'start': geo
          .point(
            latitude: ride.pickUp.geometry.location.lat,
            longitude: ride.pickUp.geometry.location.lng,
          )
          .data,
      'destination': geo
          .point(
            latitude: ride.droppOff.geometry.location.lat,
            longitude: ride.droppOff.geometry.location.lng,
          )
          .data,
      'dest_place_id': ride.droppOff.placeId,
      'dest_name': ride.droppOff.name,
      'distance': ride.distance,
      'duration': ride.duration,
      'disttext': ride.googelMatrix.rows.first.elements.first.distance.text,
      'durtext': ride.googelMatrix.rows.first.elements.first.duration.text,
      'type': ride.type.name,
      'phone': phone,
      'driverId': driverId,
      'date': ride.date != null ? Timestamp.fromDate(ride.date!) : null,
      'ts': Timestamp.fromDate(DateTime.now()),
    };
    try {
      final userDoc = await firestore
          .collection('users')
          .doc(userUid)
          .collection('rides')
          .doc()
          .set(rideData);
      await firestore.collection('booking').doc().set(rideData);

      await firestore
          .collection('drivers')
          .doc(driverId)
          .collection('rides')
          .doc()
          .set(rideData);

      return right(unit);
    } catch (e) {
      return left(const BookingFailure.serverError());
    }
  }

  Stream<List<Booking>> requestsStream(String userUid) {
    final results = firestore
        .collection('users')
        .doc(userUid)
        .collection('rides')
        .orderBy("ts", descending: true)
        .snapshots()
        .asyncMap((data) {
      final requests = data.docs
          .map(
            (doc) => Booking.fromJson(
              (doc.data() as Map<String, dynamic>)
                ..putIfAbsent('id', () => doc.id),
            ),
          )
          .toList();

      return requests;
    });

    return results;
  }
}

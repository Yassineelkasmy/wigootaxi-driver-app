import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:geoflutterfire/geoflutterfire.dart';
import 'package:wigootaxidriver/booking/domain/booking.dart';
import 'package:wigootaxidriver/booking/domain/booking_failure.dart';
import 'package:wigootaxidriver/booking/domain/ride.dart';

class BookingService {
  final geo = Geoflutterfire();

  final firestore = FirebaseFirestore.instance;

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

  Future<Either<BookingFailure, Unit>> accpetRide(
      {required String driverId, required String bookingId}) async {
    try {
      Future.wait([
        firestore
            .collection('booking')
            .doc(bookingId)
            .update({'driverId': driverId}),
      ]);
      return right(unit);
    } catch (e) {
      return left(const BookingFailure.serverError());
    }
  }
}

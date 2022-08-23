import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:wigootaxidriver/profile/domain/metrics.dart';
import 'package:wigootaxidriver/ride/domain/ride_failure.dart';

class MetricsService {
  MetricsService();
  final metricsRef =
      FirebaseFirestore.instance.collection('metrics').doc('metrics');

  Future<Either<RideFailure, Metrics>> getMetrics() async {
    try {
      final metricsDoc = await metricsRef.get();
      return right(
        Metrics.fromJson(metricsDoc.data()!),
      );
    } catch (e) {
      print(e);
      return left(const RideFailure.serverError());
    }
  }
}

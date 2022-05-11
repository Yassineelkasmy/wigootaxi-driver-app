import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:wigootaxidriver/domain/submission/submission.dart';
import 'package:wigootaxidriver/domain/submission/submission_failure.dart';

class UserService {
  UserService(this.firestore) {
    collectionReference = firestore.collection('submissions');
  }

  final FirebaseFirestore firestore;

  late CollectionReference collectionReference;
  Future<void> createSubmission(
    String userid,
    String type,
  ) async {
    await collectionReference.doc(userid).set({
      "ts": Timestamp.now(),
      "type": type,
    });
  }

  Future<Either<SubmissionFailure, Unit>> submitDocument(
    String userid,
    Map<String, dynamic> data,
  ) async {
    try {
      await collectionReference.doc(userid).set(data);
      return right(unit);
    } catch (e) {
      return left(SubmissionFailure.serverError());
    }
  }

  Future<Either<SubmissionFailure, Submission>> getSubmission(
    String userid,
  ) async {
    try {
      final doc = await collectionReference.doc(userid).get();

      final data = (doc.data() as Map<String, dynamic>)
        ..putIfAbsent('id', () => doc.id);
      print(data.keys.toList());
      final submission = Submission.fromJson(data);
      return right(submission);
    } catch (e) {
      print(e);
      return left(SubmissionFailure.serverError());
    }
  }
}

import 'package:cloud_firestore/cloud_firestore.dart';

class UserService {
  UserService(this.firestore) {
    collectionReference = firestore.collection('submissions');
  }

  final FirebaseFirestore firestore;

  late CollectionReference collectionReference;
  Future<void> createSubmission(
    String userid,
  ) async {
    await collectionReference.doc(userid).set({
      "ts": Timestamp.now(),
    });
  }

  Future<void> submitDocument(
    String userid,
    String documentName,
    String url,
  ) async {
    await collectionReference.doc(userid).update({documentName: url});
  }
}

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'submission.freezed.dart';
part 'submission.g.dart';

@JsonSerializable()
@freezed
class Submission with _$Submission {
  const factory Submission({
    required String id,
    required String profil,
    required String cin_devant,
    required String cin_arriere,
    required String permis_devant,
    required String permis_arriere,
    required String cartegrisse_devant,
    required String cartegrisse_arriere,
    required String status,
    required String username,
    required String email,
    required String phone,
    required String type,
    required DateTime ts,
  }) = _Submission;

  factory Submission.fromJson(Map<String, dynamic> json) {
    json["ts"] = ((json["ts"] as Timestamp).toDate().toString());

    return _$SubmissionFromJson(json);
  }
}

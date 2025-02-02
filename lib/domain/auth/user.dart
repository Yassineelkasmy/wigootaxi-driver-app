import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

@freezed
class User with _$User {
  const factory User({
    required String uid,
    required String email,
    required bool isPhoneVerified,
    required String status,
    String? phone,
    String? displayName,
    String? photoURL,
  }) = _User;
}

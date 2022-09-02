import 'package:freezed_annotation/freezed_annotation.dart';

part 'driver_profile.freezed.dart';
part 'driver_profile.g.dart';

@freezed
class DriverProfile with _$DriverProfile {
  const factory DriverProfile({
    required String username,
    required String phone,
    String? currentRideId,
    String? currentUserId,
    int? ridesIgnored,
    int? ridesFinished,
    int? ridesCancelledByDriver,
    int? ridesCancelledByUser,
    int? totalRides,
    double? totalAmount,
    double? tvaToPay,
    double? revenueToPay,
  }) = _DriverProfile;

  factory DriverProfile.fromJson(Map<String, dynamic> json) =>
      _$DriverProfileFromJson(json);
}

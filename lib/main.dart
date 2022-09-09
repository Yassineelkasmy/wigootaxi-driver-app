import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_callkit_incoming/flutter_callkit_incoming.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';
import 'package:geoflutterfire/geoflutterfire.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:in_app_notification/in_app_notification.dart';
import 'package:uuid/uuid.dart';
import 'package:wigootaxidriver/firebase_options.dart';
import 'package:wigootaxidriver/presentation/core/app_widget.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // await EasyLocalization.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(
    Phoenix(
      child: ProviderScope(
        child: InAppNotification(
          child: AppWidget(),
        ),
      ),
    ),
  );
  FirebaseMessaging firebaseMessaging = FirebaseMessaging.instance;
  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);

  final user = FirebaseAuth.instance.currentUser;
  if (user != null) {
    await firebaseMessaging.subscribeToTopic(user.uid);
    firebaseMessaging.requestPermission(
      alert: true,
      badge: true,
      sound: true,
    );
  }
}

Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  print('ddddddddddddddddd');
  final data = message.data;
  final geo = Geoflutterfire();
  final type = (data['type'] as String?);
  if (type != null) {
    if (type == 'booking') {
      final username = data['username'] as String;
      final start = data['start'] as String;

      final startLat = double.tryParse(data['startLat'] as String)!;
      final startLng = double.tryParse(data['startLng'] as String)!;
      final driverLat = double.tryParse(data['driverLat'] as String)!;
      final driverLng = double.tryParse(data['driverLng'] as String)!;
      final destination = data['destination'] as String;
      final distance =
          geo.point(latitude: startLat, longitude: startLng).kmDistance(
                lat: driverLat,
                lng: driverLng,
              );
      final duration = data['duration'] as String;

      var params = <String, dynamic>{
        'id': Uuid().v4(),
        'nameCaller': username,
        'appName': 'WigooTaxi',
        'avatar':
            'https://firebasestorage.googleapis.com/v0/b/taxi-app-user-4800a.appspot.com/o/logo_white.png?alt=media&token=85d66b37-fe3d-4dfa-9b34-c8a1228e879d',
        'handle':
            'Localisation:\n$start\nDestination:\n$destination\nDistance:\n$distance km\nDurée de trajet:\n$duration',
        'type': 0,
        'duration': 100000,
        'textAccept': 'Accepter',
        'textMissedCall': 'Course manquée',
        'textCallback': 'Justifier',
        'extra': <String, dynamic>{'userId': '1a2b3c4d'},
        'headers': <String, dynamic>{
          'apiKey': 'Abc@123!',
          'platform': 'flutter'
        },
        'android': <String, dynamic>{
          'isCustomNotification': true,
          'isShowLogo': false,
          'isShowCallback': false,
          'ringtonePath': 'call.mp3',
          'backgroundColor': '#1565C0',
          'background':
              'https://firebasestorage.googleapis.com/v0/b/taxi-app-user-4800a.appspot.com/o/logo_white.png?alt=media&token=85d66b37-fe3d-4dfa-9b34-c8a1228e879d',
          'actionColor': '#4CAF50'
        },
        'ios': <String, dynamic>{
          'iconName': 'CallKitLogo',
          'handleType': '',
          'supportsVideo': true,
          'maximumCallGroups': 2,
          'maximumCallsPerCallGroup': 1,
          'audioSessionMode': 'default',
          'audioSessionActive': true,
          'audioSessionPreferredSampleRate': 44100.0,
          'audioSessionPreferredIOBufferDuration': 0.005,
          'supportsDTMF': true,
          'supportsHolding': true,
          'supportsGrouping': false,
          'supportsUngrouping': false,
          'ringtonePath': 'system_ringtone_default'
        }
      };
      await FlutterCallkitIncoming.showCallkitIncoming(params);
    }
  }
}

Future<void> showCallkitIncoming(String uuid) async {
  var params = <String, dynamic>{
    'id': uuid,
    'nameCaller': 'Hien Nguyen',
    'appName': 'WigooTaxi',
    'avatar': 'https://i.pravatar.cc/100',
    'handle': '0123456789',
    'type': 0,
    'duration': 30000,
    'textAccept': 'Accept',
    'textDecline': 'Decline',
    'textMissedCall': 'Missed call',
    'textCallback': 'Call back',
    'extra': <String, dynamic>{'userId': '1a2b3c4d'},
    'headers': <String, dynamic>{'apiKey': 'Abc@123!', 'platform': 'flutter'},
    'android': <String, dynamic>{
      'isCustomNotification': true,
      'isShowLogo': false,
      'isShowCallback': false,
      'ringtonePath': 'system_ringtone_default',
      'backgroundColor': '#0955fa',
      'background': 'https://i.pravatar.cc/500',
      'actionColor': '#4CAF50'
    },
    'ios': <String, dynamic>{
      'iconName': 'CallKitLogo',
      'handleType': '',
      'supportsVideo': true,
      'maximumCallGroups': 2,
      'maximumCallsPerCallGroup': 1,
      'audioSessionMode': 'default',
      'audioSessionActive': true,
      'audioSessionPreferredSampleRate': 44100.0,
      'audioSessionPreferredIOBufferDuration': 0.005,
      'supportsDTMF': true,
      'supportsHolding': true,
      'supportsGrouping': false,
      'supportsUngrouping': false,
      'ringtonePath': 'system_ringtone_default'
    }
  };
  await FlutterCallkitIncoming.showCallkitIncoming(params);
}

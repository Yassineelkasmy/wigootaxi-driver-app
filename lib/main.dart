import 'dart:async';

import 'package:connectycube_flutter_call_kit/connectycube_flutter_call_kit.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:wigootaxidriver/firebase_options.dart';
import 'package:wigootaxidriver/presentation/core/app_widget.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // await EasyLocalization.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(
    ProviderScope(
      child: AppWidget(),
    ),
  );
  FirebaseMessaging firebaseMessaging = FirebaseMessaging.instance;

  final user = FirebaseAuth.instance.currentUser;
  if (user != null) {
    await firebaseMessaging.subscribeToTopic(user.uid);
    firebaseMessaging.requestPermission(alert: true, badge: true, sound: true);
    Future<void> _onCallAccepted(CallEvent callEvent) async {
      // the call was accepted
    }

    Future<void> _onCallRejected(CallEvent callEvent) async {
      // the call was rejected
    }
    ConnectycubeFlutterCallKit.instance.init(
      onCallAccepted: _onCallAccepted,
      onCallRejected: _onCallRejected,
    );

    FirebaseMessaging.onMessage.listen((remoteMessage) {
      // ConnectycubeFlutterCallKit.showCallNotification(callEvent);
    });
  }
}

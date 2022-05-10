// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyDNhAo9mTuoc0X8ICBOTHpKOLebTLy3330',
    appId: '1:114866143933:web:3ef97a7b69e67aec99add4',
    messagingSenderId: '114866143933',
    projectId: 'taxi-app-driver-a27da',
    authDomain: 'taxi-app-driver-a27da.firebaseapp.com',
    storageBucket: 'taxi-app-driver-a27da.appspot.com',
    measurementId: 'G-HLWFBJ55JF',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCYl-u_Z0fQDAGqz-lSQEQS0imdfuQUBIk',
    appId: '1:114866143933:android:5fcc8f73b8c87b5299add4',
    messagingSenderId: '114866143933',
    projectId: 'taxi-app-driver-a27da',
    storageBucket: 'taxi-app-driver-a27da.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAttBAkygqVhuE9MU5-PAI6B2ied_848Sk',
    appId: '1:114866143933:ios:8e0f1b0d27dde51399add4',
    messagingSenderId: '114866143933',
    projectId: 'taxi-app-driver-a27da',
    storageBucket: 'taxi-app-driver-a27da.appspot.com',
    iosClientId: '114866143933-1tkpnb9afi4kg0tuqa86lk98v0qsjqfv.apps.googleusercontent.com',
    iosBundleId: 'com.example.wigootaxidriver',
  );
}

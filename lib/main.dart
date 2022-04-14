import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_core/firebase_core.dart';
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
}

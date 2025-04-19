import 'package:easy_localization/easy_localization.dart';
import 'package:mzadcom/config/route/root_app.dart';
import 'package:firebase_core/firebase_core.dart';
import 'data/firebase/firebase_options.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    EasyLocalization(
        supportedLocales: const [Locale('ar'), Locale('en')],
        path: 'assets/translations',
        fallbackLocale: Locale(
          'ar',
        ),
        child: AppRoot()),
  );
}

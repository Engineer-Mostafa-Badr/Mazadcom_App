import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:mzadcom/root/root_app.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();


await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(
    EasyLocalization(
        supportedLocales: [Locale('ar'), Locale('en')],
        path:
            'assets/translations', 
        fallbackLocale: Locale('ar',),
        child: AppRoot()),
  );
}

import 'package:flutter/material.dart';
import 'package:flutter_application_1/LocaleString.dart';
import 'package:flutter_application_1/globals.dart' as globals;
import 'package:flutter_application_1/mainscreen.dart';
import 'package:get/get.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Locale updateLanguage() {
    if (globals.language == 'English') {
      return const Locale('en', 'en');
    } else {
      return const Locale('en', 'vn');
    }
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: LocalString(),
      locale: updateLanguage(),
      home: const MainScreen(),
    );
  }
}

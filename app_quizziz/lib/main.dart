import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/globals.dart' as globals;
import 'package:flutter_application_1/localestring.dart';
import 'package:flutter_application_1/mainscreen.dart';
import 'package:get/get.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(
    SystemUiMode.manual,
    overlays: [
      SystemUiOverlay.bottom, //This line is used for showing the bottom bar
    ],
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Locale updateLanguage() {
    if (globals.language == 'English') {
      return const Locale('en', 'en');
    } else if (globals.language == 'French') {
      return const Locale('en', 'fr');
    } else {
      return const Locale('en', 'vn');
    }
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      translations: LocalString(),
      locale: updateLanguage(),
      home: const MainScreen(),
    );
  }
}

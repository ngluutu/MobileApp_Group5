import 'package:flutter/material.dart';
import 'setting.dart';
import 'menubar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(body: Setting()));
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: camel_case_types
class Activity_Second extends StatefulWidget {
  const Activity_Second({super.key});

  @override
  State<Activity_Second> createState() => _Activity_SecondState();
}

// ignore: camel_case_types
class _Activity_SecondState extends State<Activity_Second> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: icons()),
    );
  }

  Widget icons() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/girl.png',
            width: 150,
            height: 150,
          ),
          Text(
            "You haven't played any game yet!".tr,
            style: GoogleFonts.comfortaa(
              textStyle: const TextStyle(
                fontSize: 13,
                color: Color.fromARGB(255, 107, 107, 107),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: camel_case_types
class Activity_second extends StatefulWidget {
  const Activity_second({super.key});

  @override
  State<Activity_second> createState() => _Activity_secondState();
}

// ignore: camel_case_types
class _Activity_secondState extends State<Activity_second> {
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

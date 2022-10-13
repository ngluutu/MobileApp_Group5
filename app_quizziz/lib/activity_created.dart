import 'package:flutter/material.dart';
import 'package:flutter_application_1/activity_completed.dart';
import 'package:flutter_application_1/menubar.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: camel_case_types
class Activity_third extends StatefulWidget {
  const Activity_third({super.key});

  @override
  State<Activity_third> createState() => _Activity_thirdState();
}

// ignore: camel_case_types
class _Activity_thirdState extends State<Activity_third> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [icons(), MenuBar()],
        ),
      )),
    );
  }

  Widget icons() {
    return Container(
        child: Center(
      child: Column(
        children: [
          Image.asset(
            'assets/girl.png',
            width: 150,
            height: 150,
          ),
          Text(
            'You haven’t created any game yet! ',
            style: GoogleFonts.comfortaa(
              textStyle: const TextStyle(
                fontSize: 13,
                color: Color.fromARGB(255, 107, 107, 107),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}

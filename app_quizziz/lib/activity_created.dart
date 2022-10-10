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
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [options(), icons(), const MenuBar()],
          ),
        ),
      ),
    );
  }

  Widget options() {
    return Row(
      children: [running(), completed(), created()],
    );
  }

  TextButton running() {
    return TextButton(
      child: Container(
        height: 26,
        width: 85,
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Row(
          children: [
            Text(
              'Running',
              style: GoogleFonts.comfortaa(
                fontWeight: FontWeight.w700,
                textStyle: const TextStyle(fontSize: 16, color: Colors.black),
              ),
            ),
            Image.asset(
              'assets/clock1.png',
              width: 13,
              height: 13,
            )
          ],
        ),
      ),
      onPressed: () {
        Navigator.push(
          context,
          //PageRouteBuilder(pageBuilder: (context) => Activity_third())
          MaterialPageRoute(
            builder: (context) => const Activity_third(),
            maintainState: false,
          ),
        );
      },
    );
  }

  TextButton completed() {
    return TextButton(
      child: Container(
        height: 26,
        width: 105,
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Row(
          children: [
            Text(
              'Completed',
              style: GoogleFonts.comfortaa(
                fontWeight: FontWeight.w700,
                textStyle: const TextStyle(fontSize: 16, color: Colors.black),
              ),
            ),
            Image.asset(
              'assets/clock2.png',
              width: 13,
              height: 13,
            )
          ],
        ),
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Activity_second()),
        );
      },
    );
  }

  TextButton created() {
    return TextButton(
      child: Container(
        height: 26,
        width: 85,
        decoration: const BoxDecoration(
          color: Colors.white,
          border: Border(
            bottom: BorderSide(
              width: 5.0,
              color: Color.fromARGB(255, 240, 184, 100),
            ),
          ),
        ),
        child: Row(
          children: [
            Text(
              'Created',
              style: GoogleFonts.comfortaa(
                fontWeight: FontWeight.w700,
                textStyle: const TextStyle(fontSize: 16, color: Colors.black),
              ),
            ),
            Image.asset(
              'assets/document.png',
              width: 13,
              height: 13,
            )
          ],
        ),
      ),
      onPressed: () {},
    );
  }

  Widget icons() {
    return Column(
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
    );
  }
}

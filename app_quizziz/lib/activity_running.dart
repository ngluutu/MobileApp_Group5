import 'package:flutter/material.dart';
import 'package:flutter_application_1/activity_completed.dart';
import 'package:flutter_application_1/activity_created.dart';
import 'package:flutter_application_1/menubar.dart';
import 'package:google_fonts/google_fonts.dart';

class Activity extends StatefulWidget {
  const Activity({super.key});

  @override
  State<Activity> createState() => _ActivityState();
}

class _ActivityState extends State<Activity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: icons()),
    );
  }

  Widget icons() {
    return Container(
        child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            'assets/girl.png',
            width: 150,
            height: 150,
          ),
          Text(
            'You haven’t played any game yet! ',
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

class AppBarActivity extends StatelessWidget {
  const AppBarActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return top();
  }

  Widget top() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(padding: EdgeInsets.symmetric(vertical: 10)),
        Row(
          children: [
            const Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
            Text(
              'Activity',
              style: GoogleFonts.comfortaa(
                textStyle: const TextStyle(
                  color: Colors.black,
                  //fontFamily: "Comfortaa",
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
        const Padding(padding: EdgeInsets.symmetric(vertical: 10)),
        const Divider(
          color: Color.fromRGBO(196, 196, 196, 1),
          height: 0,
        )
      ],
    );
  }
}

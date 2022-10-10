import 'package:flutter_application_1/activity_created.dart';
import 'package:flutter_application_1/activity_running.dart';
import 'package:flutter_application_1/menubar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class Activity_second extends StatefulWidget {
  const Activity_second({super.key});

  @override
  State<Activity_second> createState() => _Activity_secondState();
}

class _Activity_secondState extends State<Activity_second> {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: SafeArea(
        child: Column(
          children: [options(), icons(), MenuBar()],
        ),
      )),
    );
  }

  Widget options() {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [running(), completed(), created()],
      ),
    );
  }

  TextButton running() {
    return TextButton(
        child: Container(
            height: 26,
            width: 85,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.rectangle,
            ),
            child: Row(
              children: [
                Text("Running",
                    style: GoogleFonts.comfortaa(
                        fontWeight: FontWeight.w700,
                        textStyle:
                            TextStyle(fontSize: 16, color: Colors.black))),
                Image.asset(
                  "assets/clock1.png",
                  width: 13,
                  height: 13,
                )
              ],
            )),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Activity()),
          );
        });
  }

  TextButton completed() {
    return TextButton(
        child: Container(
            height: 26,
            width: 105,
            decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.rectangle,
                border: Border(
                  bottom: BorderSide(
                      width: 5.0, color: Color.fromARGB(255, 240, 184, 100)),
                )),
            child: Row(
              children: [
                Text("Completed",
                    style: GoogleFonts.comfortaa(
                        fontWeight: FontWeight.w700,
                        textStyle:
                            TextStyle(fontSize: 16, color: Colors.black))),
                Image.asset(
                  "assets/clock2.png",
                  width: 13,
                  height: 13,
                )
              ],
            )),
        onPressed: () {});
  }

  TextButton created() {
    return TextButton(
        child: Container(
            height: 26,
            width: 85,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.rectangle,
            ),
            child: Row(
              children: [
                Text("Created",
                    style: GoogleFonts.comfortaa(
                        fontWeight: FontWeight.w700,
                        textStyle:
                            TextStyle(fontSize: 16, color: Colors.black))),
                Image.asset(
                  "assets/document.png",
                  width: 13,
                  height: 13,
                )
              ],
            )),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Activity_third()),
          );
        });
  }

  Widget icons() {
    return Container(
      child: Column(children: [
        Image.asset(
          "assets/girl.png",
          width: 150,
          height: 150,
        ),
        Text("You haven’t played any game yet! ",
            style: GoogleFonts.comfortaa(
                textStyle: TextStyle(
                    fontSize: 13, color: Color.fromARGB(255, 107, 107, 107)))),
      ]),
    );
  }
}

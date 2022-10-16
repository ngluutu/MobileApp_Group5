import 'package:flutter/material.dart';
import 'package:flutter_application_1/activity_completed.dart';
import 'package:flutter_application_1/activity_created.dart';
import 'package:flutter_application_1/activity_running.dart';
import 'package:google_fonts/google_fonts.dart';

class ActivityState extends StatefulWidget {
  const ActivityState({super.key});

  @override
  State<ActivityState> createState() => _ActivityStateState();
}

class _ActivityStateState extends State<ActivityState> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: Column(
          children: [
            TabBar(
              //Lam day thanh duoi tab bar
              indicator: const UnderlineTabIndicator(
                borderSide: BorderSide(
                  width: 5,
                  color: Color.fromARGB(255, 239, 157, 33),
                ),
                insets: EdgeInsets.only(right: 8, bottom: 4),
              ),
              isScrollable: true,
              labelPadding: EdgeInsets.symmetric(horizontal: 8.0),
              padding: EdgeInsets.only(right: 80),
              tabs: [
                Tab(
                  child: Row(
                    children: [
                      Text(
                        'Running',
                        style: GoogleFonts.comfortaa(
                          textStyle: const TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            //decoration: TextDecoration.underline,
                          ),
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
                Tab(
                  child: Row(
                    children: [
                      Text(
                        'Completed',
                        style: GoogleFonts.comfortaa(
                          textStyle: const TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            //decoration: TextDecoration.underline,
                          ),
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
                Tab(
                  child: Row(
                    children: [
                      Text(
                        'Created',
                        style: GoogleFonts.comfortaa(
                          textStyle: const TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            //decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                      Image.asset(
                        'assets/document.png',
                        width: 13,
                        height: 13,
                      )
                    ],
                  ),
                )
              ],
            ),
            const Expanded(
              child: TabBarView(
                children: [Activity(), Activity_second(), Activity_third()],
              ),
            )
          ],
        ),
      ),
    );
  }
}

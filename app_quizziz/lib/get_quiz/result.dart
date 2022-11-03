import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/get_quiz/countdown_widget.dart';
import 'package:flutter_application_1/mainscreen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

// ignore: must_be_immutable
class ResultWidget extends StatefulWidget {
  int result;
  int total;

  ResultWidget(this.result, this.total);

  @override
  // ignore: no_logic_in_create_state
  State<ResultWidget> createState() => _ResultWidgetState(result, total);
}

class _ResultWidgetState extends State<ResultWidget> {
  int result;
  int total;
  _ResultWidgetState(this.result, this.total);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: ColoredBox(
          color: Colors.black,
          child: Column(
            children: [
              const Padding(padding: EdgeInsets.symmetric(vertical: 10)),
              totalChart(),
              const Padding(padding: EdgeInsets.symmetric(vertical: 10)),
              cardWidget(),
              const Padding(padding: EdgeInsets.symmetric(vertical: 10)),
              buttonWidget(),
            ],
          ),
        ),
      ),
    );
  }

  Widget totalChart() {
    return Container(
      height: 160,
      width: 380,
      decoration: BoxDecoration(
        color: const Color.fromRGBO(34, 34, 34, 1),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Center(
        child: Column(
          children: [
            const Padding(padding: EdgeInsets.symmetric(vertical: 10)),
            Text(
              'Score overview',
              style: GoogleFonts.comfortaa(
                textStyle: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Padding(padding: EdgeInsets.symmetric(vertical: 30)),
            LinearPercentIndicator(
              percent: result / total,
              lineHeight: 20,
              progressColor: Colors.green,
              backgroundColor: Colors.red,
              barRadius: const Radius.circular(30),
            ),
            const Padding(padding: EdgeInsets.symmetric(vertical: 4)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
                    Text(
                      'Correct',
                      style: GoogleFonts.comfortaa(
                        textStyle: const TextStyle(
                          color: Colors.green,
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      'Incorrect',
                      style: GoogleFonts.comfortaa(
                        textStyle: const TextStyle(
                          color: Colors.red,
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget cardWidget() {
    return SizedBox(
      width: 380,
      height: 80,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 120,
            height: 80,
            child: Card(
              color: Colors.purple.withOpacity(0.5),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              child: ListTile(
                visualDensity: const VisualDensity(vertical: 3),
                isThreeLine: true,
                leading: Text(
                  'Total',
                  style: GoogleFonts.comfortaa(
                    textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                subtitle: Text(
                  '$total',
                  style: GoogleFonts.comfortaa(
                    textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            width: 120,
            height: 80,
            child: Card(
              color: Colors.green.withOpacity(0.5),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              child: ListTile(
                visualDensity: const VisualDensity(vertical: 3),
                isThreeLine: true,
                leading: Text(
                  'Correct',
                  style: GoogleFonts.comfortaa(
                    textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                subtitle: Text(
                  '$result',
                  style: GoogleFonts.comfortaa(
                    textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            width: 120,
            height: 80,
            child: Card(
              color: Colors.red.withOpacity(0.5),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              child: ListTile(
                visualDensity: const VisualDensity(vertical: 3, horizontal: -4),
                isThreeLine: true,
                leading: Text(
                  'Incorrect',
                  style: GoogleFonts.comfortaa(
                    textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                subtitle: Text(
                  '${total - result}',
                  style: GoogleFonts.comfortaa(
                    textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buttonWidget() {
    return Container(
      height: 80,
      width: 380,
      decoration: BoxDecoration(
        color: const Color.fromRGBO(34, 34, 34, 1),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              child: Container(
                height: 40,
                width: 160,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(0, 201, 133, 1),
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromRGBO(0, 160, 106, 1),
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Center(
                  child: Text(
                    'Play again',
                    style: GoogleFonts.comfortaa(
                      textStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              onPressed: () {
                // ignore: unused_local_variable
                final Timer timer =
                    Timer.periodic(const Duration(seconds: 1), (timer) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CountDownWidget(),
                    ),
                  );
                  timer.cancel();
                });
              },
            ),
            TextButton(
              child: Container(
                height: 40,
                width: 160,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(0, 201, 133, 1),
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromRGBO(0, 160, 106, 1),
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Center(
                  child: Text(
                    'Exit',
                    style: GoogleFonts.comfortaa(
                      textStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              onPressed: () {
                // ignore: unused_local_variable
                final Timer timer =
                    Timer.periodic(const Duration(seconds: 1), (timer) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const MainScreen()),
                  );
                  timer.cancel();
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}

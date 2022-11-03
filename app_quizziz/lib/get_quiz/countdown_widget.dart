import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/get_quiz/get_quiz.dart';
import 'package:flutter_application_1/globals.dart';
import 'package:google_fonts/google_fonts.dart';

class CountDownWidget extends StatefulWidget {
  const CountDownWidget({super.key});

  @override
  State<CountDownWidget> createState() => _CountDownWidgetState();
}

class _CountDownWidgetState extends State<CountDownWidget> {
  String second = '4';
  Timer? timer;

  Future<void> startTimer() async {
    timer = Timer.periodic(const Duration(milliseconds: 1000), (_) {
      switch (second) {
        case '4':
          setState(() {
            second = '3';
          });
          break;
        case '3':
          setState(() {
            second = '2';
          });
          break;
        case '2':
          setState(() {
            second = '1';
          });
          break;
        default:
          setState(() {
            second = "Let's start!";
            timer?.cancel();
          });
      }
    });
  }

  bool text = false;
  bool button = true;
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Stack(
          children: [
            ColoredBox(
              color: Colors.black,
              child: Center(
                child: Visibility(
                  visible: text,
                  child: Text(
                    second,
                    style: GoogleFonts.comfortaa(
                      textStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 60,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 8),
                  ),
                  backButton(),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 8),
                  ),
                  startQuiz(),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 8),
                  ),
                  describeQuiz(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget startQuiz() {
    return Visibility(
      visible: button,
      child: Container(
        height: 80,
        width: 380,
        decoration: BoxDecoration(
          color: const Color.fromRGBO(34, 34, 34, 1),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Center(
          child: TextButton(
            child: Container(
              height: 40,
              width: 350,
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
                  'Start quiz',
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
              button = false;
              text = true;
              startTimer();
              // ignore: unused_local_variable
              final Timer timer =
                  Timer.periodic(const Duration(seconds: 6), (timer) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const GetQuiz()),
                );
                timer.cancel();
              });
            },
          ),
        ),
      ),
    );
  }

  Widget backButton() {
    return Visibility(
      visible: button,
      child: TextButton(
        onPressed: () => Navigator.pop(context),
        child: Container(
          height: 30,
          width: 50,
          decoration: BoxDecoration(
            color: const Color.fromRGBO(34, 34, 34, 1),
            borderRadius: BorderRadius.circular(5),
          ),
          child: Center(
            child: Text(
              'Exit',
              style: GoogleFonts.comfortaa(
                textStyle: const TextStyle(
                  color: Colors.white,
                  fontSize: 11,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget describeQuiz() {
    return Visibility(
      visible: button,
      child: Container(
        height: 450,
        width: 380,
        decoration: BoxDecoration(
          color: const Color.fromRGBO(34, 34, 34, 1),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Row(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 8),
                ),
                Text(
                  'Quiz information',
                  style: GoogleFonts.comfortaa(
                    textStyle: const TextStyle(
                      color: Color.fromRGBO(180, 180, 180, 1),
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 8),
                ),
                FutureBuilder(
                  future: getName(isPlayingQuiz),
                  builder: (context, snapshot) {
                    return Text(
                      'Title: ${snapshot.data}',
                      style: GoogleFonts.comfortaa(
                        textStyle: const TextStyle(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    );
                  },
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 8),
                ),
                FutureBuilder(
                  future: getDescription(isPlayingQuiz),
                  builder: (context, snapshot) {
                    return SizedBox(
                      width: 348,
                      child: Text(
                        'Description: ${snapshot.data}',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 3,
                        textAlign: TextAlign.justify,
                        style: GoogleFonts.comfortaa(
                          textStyle: const TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    );
                  },
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 8),
                ),
                FutureBuilder(
                  future: getNumberOfQuestions(isPlayingQuiz),
                  builder: (context, snapshot) {
                    return Text(
                      'Number of questions: ${snapshot.data}',
                      style: GoogleFonts.comfortaa(
                        textStyle: const TextStyle(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    );
                  },
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 8),
                ),
                Center(
                  child: FutureBuilder(
                    future: getImage(isPlayingQuiz),
                    builder: (context, snapshot) {
                      return Image.asset('${snapshot.data}', width: 348);
                    },
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Future<String> getName(String link) async {
    final String respone = await rootBundle.loadString(link);
    final data = await json.decode(respone);
    // ignore: avoid_dynamic_calls
    final String name = data['title'].toString();
    //print(name);
    return name;
  }

  Future<String> getDescription(String link) async {
    final String respone = await rootBundle.loadString(link);
    final data = await json.decode(respone);
    // ignore: avoid_dynamic_calls
    final String des = data['Description'].toString();
    //print(name);
    return des;
  }

  Future<String> getNumberOfQuestions(String link) async {
    final String respone = await rootBundle.loadString(link);
    final data = await json.decode(respone);
    // ignore: avoid_dynamic_calls
    final String num = data['number_of_questions'].toString();
    //print(name);
    return num;
  }

  Future<String> getImage(String link) async {
    final String respone = await rootBundle.loadString(link);
    final data = await json.decode(respone);
    // ignore: avoid_dynamic_calls
    final String image = data['image_url'].toString();
    return image;
  }
}

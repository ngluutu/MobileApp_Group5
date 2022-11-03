import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/get_quiz/countdown_widget.dart';
import 'package:flutter_application_1/globals.dart' as globals;
import 'package:flutter_application_1/globals.dart';
import 'package:google_fonts/google_fonts.dart';

class ListQuiz extends StatefulWidget {
  const ListQuiz({super.key});

  @override
  State<ListQuiz> createState() => _ListQuizState();
}

class _ListQuizState extends State<ListQuiz> {
  @override
  Widget build(BuildContext context) {
    // ignore: use_colored_box
    return Container(
      color: Colors.transparent,
      child: GridView(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        children: [
          for (var i = 0; i < globals.quiz.length; i++)
            TextButton(
              child: Container(
                height: 180,
                width: 180,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.25),
                      offset: const Offset(0, 3),
                    )
                  ],
                ),
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(5),
                        topRight: Radius.circular(5),
                      ),
                      child: FutureBuilder(
                        future: getImage(i),
                        builder: (context, snapshot) {
                          return Image.asset(
                            '${snapshot.data}',
                            fit: BoxFit.cover,
                            height: 120,
                          );
                        },
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 5,
                      ),
                    ),
                    FutureBuilder(
                      future: getName(i),
                      builder: (context, snapshot) {
                        return Text(
                          '${snapshot.data}',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.comfortaa(
                            textStyle: const TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
              onPressed: () {
                final String link = globals.quiz.elementAt(i).toString();
                isPlayingQuiz = 'assets/db/$link';
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CountDownWidget(),
                  ),
                );
              },
            )
        ],
      ),
    );
  }

  Future<String> getImage(int i) async {
    String link = globals.quiz.elementAt(i).toString();
    link = 'assets/db/$link';
    final String respone = await rootBundle.loadString(link);
    final data = await json.decode(respone);
    // ignore: avoid_dynamic_calls
    final String image = data['image_url'].toString();
    return image;
  }

  Future<String> getName(int i) async {
    String link = globals.quiz.elementAt(i).toString();
    link = 'assets/db/$link';
    final String respone = await rootBundle.loadString(link);
    final data = await json.decode(respone);
    // ignore: avoid_dynamic_calls
    final String name = data['title'].toString();
    //print(name);
    return name;
  }
}

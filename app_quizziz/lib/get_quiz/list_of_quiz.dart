import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/globals.dart' as globals;

class ListQuiz extends StatefulWidget {
  const ListQuiz({super.key});

  @override
  State<ListQuiz> createState() => _ListQuizState();
}

class _ListQuizState extends State<ListQuiz> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 390,
      child: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        children: [
          for (var i = 0; i < globals.quiz.length; i++)
            TextButton(
              child: Container(
                height: 180,
                width: 180,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.25),
                      offset: const Offset(0, 3),
                    )
                  ],
                ),
                child: Column(
                  children: [
                    //Image.asset(getImage(i).toString()),
                    Text(getName(i).toString()),
                  ],
                ),
              ),
              onPressed: () {},
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
    final String image = data['image'].toString();
    return image;
  }

  Future<String> getName(int i) async {
    String link = globals.quiz.elementAt(i).toString();
    link = 'assets/db/$link';
    final String respone = await rootBundle.loadString(link);
    final data = await json.decode(respone);
    // ignore: avoid_dynamic_calls
    final String name = data['title'].toString();
    print(name);
    return name;
  }
}

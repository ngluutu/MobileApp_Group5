// ignore_for_file: file_names, non_constant_identifier_names, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          children: [
            //top(),
            Container(
              height: 60,
              margin: const EdgeInsets.fromLTRB(10, 20, 10, 0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(7),
                border: Border.all(
                  color: const Color.fromARGB(255, 221, 220, 220),
                ),
              ),
              child: TextFormField(
                controller: _controller,
                onChanged: (text) {
                  setState(() {});
                },
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Search for quizzes'.tr,
                  contentPadding: const EdgeInsets.fromLTRB(15, 20, 90, 10),
                  labelStyle: GoogleFonts.comfortaa(
                    textStyle: const TextStyle(
                      fontSize: 14,
                      color: Color.fromARGB(255, 120, 120, 120),
                      fontFamily: 'Comfortaa',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  suffixIcon: _controller.text.isNotEmpty
                      ? IconButton(
                          onPressed: () {
                            _controller.clear();
                            setState(() {});
                          },
                          icon: const Icon(
                            Icons.cancel,
                            color: Color.fromARGB(255, 59, 58, 58),
                          ),
                        )
                      : null,
                ),
              ),
            ),
            options(),
            icons(),
          ],
        ),
      ),
    );
  }

  Widget icons() {
    return Container(
      margin: const EdgeInsets.only(top: 100),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset(
            'assets/boy.png',
            width: 150,
            height: 150,
          ),
          Text(
            'Search for quizzes on math,'.tr,
            style: GoogleFonts.comfortaa(
              textStyle: const TextStyle(
                fontSize: 13,
                color: Color.fromARGB(255, 107, 107, 107),
              ),
            ),
          ),
          Text(
            'science, history, and much'.tr,
            style: GoogleFonts.comfortaa(
              textStyle: const TextStyle(
                fontSize: 13,
                color: Color.fromARGB(255, 107, 107, 107),
              ),
            ),
          ),
          Text(
            'more...'.tr,
            style: GoogleFonts.comfortaa(
              textStyle: const TextStyle(
                fontSize: 13,
                color: Color.fromARGB(255, 107, 107, 107),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget options() {
    return FittedBox(
      //margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
      child: Row(
        //mainAxisSize: MainAxisSize.min,
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          grade_button(),
          subjects_button(),
          NoQ_button(),
          languages_button(),
        ],
      ),
      //padding: EdgeInsets.all(0.0),
    );
  }

  // ignore: non_constant_identifier_names
  TextButton grade_button() {
    return TextButton(
      child: Container(
        alignment: Alignment.center,
        height: 22,
        width: 52,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 230, 230, 230),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          'Grade'.tr,
          style: GoogleFonts.comfortaa(
            textStyle: const TextStyle(fontSize: 11, color: Colors.black),
          ),
        ),
      ),
      onPressed: () {},
    );
  }

  TextButton subjects_button() {
    return TextButton(
      child: Container(
        alignment: Alignment.center,
        height: 22,
        width: 69,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 230, 230, 230),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          'Subjects'.tr,
          style: GoogleFonts.comfortaa(
            textStyle: const TextStyle(fontSize: 11, color: Colors.black),
          ),
        ),
      ),
      onPressed: () {},
    );
  }

  TextButton NoQ_button() {
    return TextButton(
      child: Container(
        alignment: Alignment.center,
        height: 22,
        width: 147,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 230, 230, 230),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          'Number of Questions'.tr,
          style: GoogleFonts.comfortaa(
            textStyle: const TextStyle(fontSize: 11, color: Colors.black),
          ),
        ),
      ),
      onPressed: () {},
    );
  }

  TextButton languages_button() {
    return TextButton(
      child: Container(
        alignment: Alignment.center,
        height: 22,
        width: 86,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 230, 230, 230),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          'Languages'.tr,
          style: GoogleFonts.comfortaa(
            textStyle: const TextStyle(fontSize: 11, color: Colors.black),
          ),
        ),
      ),
      onPressed: () {},
    );
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
              'Search'.tr,
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

class AppBarSearch extends StatelessWidget {
  const AppBarSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return top();
  }

  Widget top() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //const Padding(padding: EdgeInsets.symmetric(vertical: 10)),
        Row(
          children: [
            const Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
            Text(
              'Search'.tr,
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

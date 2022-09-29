import 'package:flutter/material.dart';
import 'package:flutter_application_1/menubar.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  var _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    String id = '';
    return MaterialApp(
        home: Scaffold(
            body: SafeArea(
                child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        top(),
        Container(
          height: 60,
          margin: EdgeInsets.fromLTRB(10, 20, 10, 0),
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(7),
            border: Border.all(
              color: Color.fromARGB(255, 221, 220, 220),
              width: 1.0,
            ),
          ),
          child: TextFormField(
            controller: _controller,
            onChanged: (text) {
              setState(() {});
            },
            decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Search for quizzes',
                labelStyle: GoogleFonts.comfortaa(
                  textStyle: TextStyle(
                    color: Color.fromARGB(255, 120, 120, 120),
                    fontFamily: "Comfortaa",
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                suffixIcon: _controller.text.length > 0
                    ? IconButton(
                        onPressed: () {
                          _controller.clear();
                          setState(() {});
                        },
                        icon: Icon(Icons.cancel,
                            color: Color.fromARGB(255, 59, 58, 58)))
                    : null),
          ),
        ),
        options(),
        icons(),
        MenuBar(),
      ],
    ))));
  }

  Widget icons() {
    return Container(
      margin: EdgeInsets.only(top: 100),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset(
            "assets/boy.png",
            width: 150,
            height: 150,
          ),
          Text("Search for quizzes on math,",
              style: GoogleFonts.comfortaa(
                  textStyle: TextStyle(
                      fontSize: 13,
                      color: Color.fromARGB(255, 107, 107, 107)))),
          Text("science, history, and much",
              style: GoogleFonts.comfortaa(
                  textStyle: TextStyle(
                      fontSize: 13,
                      color: Color.fromARGB(255, 107, 107, 107)))),
          Text("more...",
              style: GoogleFonts.comfortaa(
                  textStyle: TextStyle(
                      fontSize: 13, color: Color.fromARGB(255, 107, 107, 107))))
        ],
      ),
    );
  }

  Widget options() {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          grade_button(),
          subjects_button(),
          NoQ_button(),
          languages_button(),
        ],
      ),
      padding: EdgeInsets.all(0.0),
    );
  }

  TextButton grade_button() {
    return TextButton(
        child: Container(
          alignment: Alignment.center,
          height: 22,
          width: 46,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 230, 230, 230),
            borderRadius: BorderRadius.circular(20),
            shape: BoxShape.rectangle,
          ),
          child: Text("Grade",
              style: GoogleFonts.comfortaa(
                  textStyle: TextStyle(fontSize: 11, color: Colors.black))),
        ),
        onPressed: () {});
  }

  TextButton subjects_button() {
    return TextButton(
        child: Container(
          alignment: Alignment.center,
          height: 22,
          width: 60,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 230, 230, 230),
            borderRadius: BorderRadius.circular(20),
            shape: BoxShape.rectangle,
          ),
          child: Text("Subjects",
              style: GoogleFonts.comfortaa(
                  textStyle: TextStyle(fontSize: 11, color: Colors.black))),
        ),
        onPressed: () {});
  }

  TextButton NoQ_button() {
    return TextButton(
        child: Container(
          alignment: Alignment.center,
          height: 22,
          width: 138,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 230, 230, 230),
            borderRadius: BorderRadius.circular(20),
            shape: BoxShape.rectangle,
          ),
          child: Text("Number of Questions",
              style: GoogleFonts.comfortaa(
                  textStyle: TextStyle(fontSize: 11, color: Colors.black))),
        ),
        onPressed: () {});
  }

  TextButton languages_button() {
    return TextButton(
        child: Container(
          alignment: Alignment.center,
          height: 22,
          width: 74,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 230, 230, 230),
            borderRadius: BorderRadius.circular(20),
            shape: BoxShape.rectangle,
          ),
          child: Text("Languages",
              style: GoogleFonts.comfortaa(
                  textStyle: TextStyle(fontSize: 11, color: Colors.black))),
        ),
        onPressed: () {});
  }

  Widget top() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(padding: EdgeInsets.symmetric(vertical: 10)),
          Row(
            children: [
              Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
              Text(
                'Search',
                style: GoogleFonts.comfortaa(
                  textStyle: TextStyle(
                    color: Colors.black,
                    //fontFamily: "Comfortaa",
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          Padding(padding: EdgeInsets.symmetric(vertical: 10)),
          Divider(
            color: Color.fromRGBO(196, 196, 196, 1),
            height: 0,
          )
        ],
      ),
    );
  }
}

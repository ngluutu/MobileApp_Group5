// ignore_for_file: avoid_dynamic_calls, non_constant_identifier_names

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/get_quiz/result.dart';
import 'package:flutter_application_1/globals.dart';
import 'package:google_fonts/google_fonts.dart';

class GetQuiz extends StatefulWidget {
  const GetQuiz({super.key});

  @override
  State<GetQuiz> createState() => _GetQuizState();
}

// ignore: duplicate_ignore
class _GetQuizState extends State<GetQuiz> {
  @override
  void initState() {
    WidgetsFlutterBinding.ensureInitialized();
    super.initState();
  }

  int pageIndex = 0;
  PageController pageController = PageController();
  bool hide_A = true;
  bool hide_B = true;
  bool hide_C = true;
  bool hide_D = true;
  Color color_A = const Color.fromRGBO(48, 109, 174, 1);
  Color color_B = const Color.fromRGBO(44, 156, 167, 1);
  Color color_C = const Color.fromRGBO(236, 168, 45, 1);
  Color color_D = const Color.fromRGBO(212, 85, 106, 1);
  Color correct_answer = Colors.green;
  Color incorrect_answer = Colors.red;
  bool active = true;

  List _item = [];
  int total = 0;
  int result = 0;
  int page = 0;

  Future<void> readJson() async {
    final String respone =
        await rootBundle.loadString(isPlayingQuiz, cache: false);
    final data = jsonDecode(respone);
    // ignore: duplicate_ignore
    setState(() {
      _item = data['questions'] as List;
      total = _item.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    readJson();
    return Scaffold(
      body: WillPopScope(
        onWillPop: () async => false,
        child: Column(
          children: [
            // Display the data loaded from sample.json
            if (_item.isNotEmpty)
              Expanded(
                child: PageView.builder(
                  pageSnapping: false,
                  onPageChanged: (index) async {
                    hide_A = true;
                    hide_B = true;
                    hide_C = true;
                    hide_D = true;
                    color_A = const Color.fromRGBO(48, 109, 174, 1);
                    color_B = const Color.fromRGBO(44, 156, 167, 1);
                    color_C = const Color.fromRGBO(236, 168, 45, 1);
                    color_D = const Color.fromRGBO(212, 85, 106, 1);
                    active = true;
                  },
                  controller: pageController,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: _item.length,
                  itemBuilder: (context, index) {
                    // ignore: use_decorated_box
                    return Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: const Color.fromRGBO(71, 26, 67, 1),
                      ),
                      child: Column(
                        children: [
                          Container(
                            height: 200,
                            width: 390,
                            color: Colors.transparent,
                            child: Center(
                              child: Text(
                                'Question ' +
                                    '${index + 1}: ${_item[index]['question'] as String}',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.comfortaa(
                                  textStyle: const TextStyle(
                                    color: Colors.white,
                                    //fontFamily: "Comfortaa",
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Visibility(
                            maintainSize: true,
                            maintainSemantics: true,
                            maintainAnimation: true,
                            maintainState: true,
                            visible: hide_A,
                            child: TextButton(
                              onPressed: () async {
                                if (active) {
                                  final int s = getCorrectAnswer(
                                    _item[index]['correct_answer'] as String,
                                  );
                                  if (0 == s) {
                                    result++;
                                    hide_D = false;
                                    hide_B = false;
                                    hide_C = false;
                                    color_A = correct_answer;
                                    // await Future.delayed(
                                    //   const Duration(milliseconds: 1500),
                                    //   () {},
                                    // );
                                    // pageController.nextPage(
                                    //   duration:
                                    //       const Duration(milliseconds: 500),
                                    //   curve: Curves.linear,
                                    // );
                                  } else {
                                    if (s == 1) {
                                      hide_C = false;
                                      hide_D = false;
                                      color_B = correct_answer;
                                      color_A = incorrect_answer;
                                    } else if (s == 2) {
                                      hide_B = false;
                                      hide_D = false;
                                      color_C = correct_answer;
                                      color_A = incorrect_answer;
                                    } else {
                                      hide_C = false;
                                      hide_B = false;
                                      color_D = correct_answer;
                                      color_A = incorrect_answer;
                                    }
                                  }
                                  await Future.delayed(
                                    const Duration(milliseconds: 1500),
                                    () {},
                                  );
                                  if (page < total - 1) {
                                    page++;
                                    pageController.nextPage(
                                      duration:
                                          const Duration(milliseconds: 500),
                                      curve: Curves.linear,
                                    );
                                  } else {
                                    // ignore: use_build_context_synchronously
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            ResultWidget(result, total),
                                      ),
                                    );
                                  }
                                }
                              },
                              child: Container(
                                height: 70,
                                width: 390,
                                decoration: BoxDecoration(
                                  color: color_A,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Center(
                                  child: Text(
                                    _item[index]['answers'][0]['Answer']
                                        as String,
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.comfortaa(
                                      textStyle: const TextStyle(
                                        color: Colors.white,
                                        //fontFamily: "Comfortaa",
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(vertical: 5),
                          ),
                          Visibility(
                            maintainSize: true,
                            maintainSemantics: true,
                            maintainAnimation: true,
                            maintainState: true,
                            visible: hide_B,
                            child: TextButton(
                              key: const Key('B'),
                              onPressed: () async {
                                if (active) {
                                  final int s = getCorrectAnswer(
                                    _item[index]['correct_answer'] as String,
                                  );
                                  if (1 == s) {
                                    result++;
                                    hide_A = false;
                                    hide_D = false;
                                    hide_C = false;
                                    color_B = correct_answer;
                                  } else {
                                    color_B = incorrect_answer;
                                    if (s == 0) {
                                      hide_C = false;
                                      hide_D = false;
                                      color_A = correct_answer;
                                    } else if (s == 2) {
                                      hide_A = false;
                                      hide_D = false;
                                      color_C = correct_answer;
                                    } else {
                                      hide_A = false;
                                      hide_C = false;
                                      color_D = correct_answer;
                                    }
                                  }
                                  await Future.delayed(
                                    const Duration(milliseconds: 1500),
                                    () {},
                                  );
                                  if (page < total - 1) {
                                    page++;
                                    pageController.nextPage(
                                      duration:
                                          const Duration(milliseconds: 500),
                                      curve: Curves.linear,
                                    );
                                  } else {
                                    // ignore: use_build_context_synchronously
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            ResultWidget(result, total),
                                      ),
                                    );
                                  }
                                }
                              },
                              child: Container(
                                height: 70,
                                width: 390,
                                decoration: BoxDecoration(
                                  color: color_B,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Center(
                                  child: Text(
                                    _item[index]['answers'][1]['Answer']
                                        as String,
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.comfortaa(
                                      textStyle: const TextStyle(
                                        color: Colors.white,
                                        //fontFamily: "Comfortaa",
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(vertical: 5),
                          ),
                          Visibility(
                            maintainSize: true,
                            maintainSemantics: true,
                            maintainAnimation: true,
                            maintainState: true,
                            visible: hide_C,
                            child: TextButton(
                              onPressed: () async {
                                if (active) {
                                  final int s = getCorrectAnswer(
                                    _item[index]['correct_answer'] as String,
                                  );
                                  if (2 == s) {
                                    result++;
                                    hide_A = false;
                                    hide_B = false;
                                    hide_D = false;
                                    color_C = correct_answer;
                                  } else {
                                    if (s == 0) {
                                      hide_B = false;
                                      hide_D = false;
                                      color_A = correct_answer;
                                      color_C = incorrect_answer;
                                    } else if (s == 1) {
                                      hide_A = false;
                                      hide_D = false;
                                      color_B = correct_answer;
                                      color_C = incorrect_answer;
                                    } else {
                                      hide_A = false;
                                      hide_B = false;
                                      color_D = correct_answer;
                                      color_C = incorrect_answer;
                                    }
                                  }
                                  await Future.delayed(
                                    const Duration(milliseconds: 1500),
                                    () {},
                                  );
                                  if (page < total - 1) {
                                    page++;
                                    pageController.nextPage(
                                      duration:
                                          const Duration(milliseconds: 500),
                                      curve: Curves.linear,
                                    );
                                  } else {
                                    // ignore: use_build_context_synchronously
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            ResultWidget(result, total),
                                      ),
                                    );
                                  }
                                }
                              },
                              child: Container(
                                height: 70,
                                width: 390,
                                decoration: BoxDecoration(
                                  color: color_C,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Center(
                                  child: Text(
                                    _item[index]['answers'][2]['Answer']
                                        as String,
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.comfortaa(
                                      textStyle: const TextStyle(
                                        color: Colors.white,
                                        //fontFamily: "Comfortaa",
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(vertical: 5),
                          ),
                          Visibility(
                            maintainSize: true,
                            maintainSemantics: true,
                            maintainAnimation: true,
                            maintainState: true,
                            visible: hide_D,
                            child: TextButton(
                              onPressed: () async {
                                if (active) {
                                  final int s = getCorrectAnswer(
                                    _item[index]['correct_answer'] as String,
                                  );
                                  if (3 == s) {
                                    result++;
                                    hide_A = false;
                                    hide_B = false;
                                    hide_C = false;
                                    color_D = correct_answer;
                                  } else {
                                    color_D = incorrect_answer;
                                    if (s == 0) {
                                      hide_C = false;
                                      hide_B = false;
                                      color_A = correct_answer;
                                    } else if (s == 1) {
                                      hide_A = false;
                                      hide_C = false;
                                      color_B = correct_answer;
                                    } else {
                                      hide_A = false;
                                      hide_B = false;
                                      color_C = correct_answer;
                                    }
                                  }
                                  await Future.delayed(
                                    const Duration(milliseconds: 1500),
                                    () {},
                                  );
                                  if (page < total - 1) {
                                    page++;
                                    pageController.nextPage(
                                      duration:
                                          const Duration(milliseconds: 500),
                                      curve: Curves.linear,
                                    );
                                  } else {
                                    // ignore: use_build_context_synchronously
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            ResultWidget(result, total),
                                      ),
                                    );
                                  }
                                }
                              },
                              child: Container(
                                height: 70,
                                width: 390,
                                decoration: BoxDecoration(
                                  color: color_D,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Center(
                                  child: Text(
                                    _item[index]['answers'][3]['Answer']
                                        as String,
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.comfortaa(
                                      textStyle: const TextStyle(
                                        color: Colors.white,
                                        //fontFamily: "Comfortaa",
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              )
            else
              Container(),
          ],
        ),
      ),
    );
  }

  int getCorrectAnswer(String s) {
    if (s == 'A') {
      return 0;
    } else if (s == 'B') {
      return 1;
    } else if (s == 'C') {
      return 2;
    } else {
      return 3;
    }
  }
}

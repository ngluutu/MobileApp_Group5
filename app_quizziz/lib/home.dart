import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/main.dart';
import 'menubar.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool readAloud = false;
  bool music = false;
  bool sound = false;
  bool memes = false;

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            top(),
            _appSettings(),
            const Padding(padding: EdgeInsets.symmetric(vertical: 20)),
            _setting(),
            const Padding(padding: EdgeInsets.symmetric(vertical: 100)),
            const MenuBar(),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 5),
            )
          ],
        ));
  }

  Widget top() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(padding: EdgeInsets.symmetric(vertical: 10)),
          Row(
            children: [
              const Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
              Image.asset('assets/quizizz_logo.jpg', width: 109, height: 40)
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

  Widget _appSettings() {
    // return Container(
    //   height: 145,
    //   width: 370,
    //   decoration: BoxDecoration(
    // color: Colors.white,
    //     shape: BoxShape.rectangle,
    //     borderRadius: BorderRadius.circular(10),
    // boxShadow: [
    //   BoxShadow(
    //     color: Colors.black.withOpacity(0.25),
    //     blurRadius: 0,
    //     offset: const Offset(0, 3),
    //   )
    // ],
    //   ),
    //   child: Column(children: [
    //     const Padding(padding: EdgeInsets.symmetric(vertical: 5)),
    //     Row(
    //       children: [
    //         const Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
    //         const Icon(Icons.person,
    //             color: Color.fromRGBO(244, 169, 52, 1), size: 24),
    //         const Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
    //         Text('App settings',
    //             style: GoogleFonts.comfortaa(
    //                 textStyle: const TextStyle(
    //                     color: Colors.black,
    //                     fontSize: 15,
    //                     fontWeight: FontWeight.bold)))
    //       ],
    //     ),
    //     const Padding(padding: EdgeInsets.symmetric(vertical: 5)),
    //     Row(
    //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //       children: [
    //         Row(
    //           children: [
    //             const Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
    //             Column(
    //               crossAxisAlignment: CrossAxisAlignment.start,
    //               children: [
    //                 Text('Language',
    //                     style: GoogleFonts.comfortaa(
    //                         textStyle: const TextStyle(
    //                             color: Colors.black,
    //                             fontSize: 13,
    //                             fontWeight: FontWeight.bold))),
    //                 const Padding(padding: EdgeInsets.symmetric(vertical: 1)),
    //                 Text('Vietnamese',
    //                     style: GoogleFonts.comfortaa(
    //                         textStyle: const TextStyle(
    //                             color: Color.fromRGBO(179, 179, 179, 1),
    //                             fontSize: 11,
    //                             fontWeight: FontWeight.bold)))
    //               ],
    //             ),
    //           ],
    //         ),
    //         IconButton(onPressed: () {}, icon: const Icon(Icons.chevron_right)),
    //       ],
    //     ),
    //     //Padding(padding: EdgeInsets.symmetric(vertical: 5)),
    //     Row(
    //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //       children: [
    //         Row(
    //           children: [
    //             const Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
    //             Text('Change account type',
    //                 style: GoogleFonts.comfortaa(
    //                     textStyle: const TextStyle(
    //                         color: Colors.black,
    //                         fontSize: 13,
    //                         fontWeight: FontWeight.bold))),
    //           ],
    //         ),
    //         IconButton(onPressed: () {}, icon: const Icon(Icons.chevron_right)),
    //       ],
    //     ),
    //   ]),
    // );
    return Container(
      height: 118,
      width: 333,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 238, 238, 238),
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(10),
        // border: Color.fromRGBO(0, 0, 0, 1)
      ),
      child: Column(children: [
        Padding(padding: EdgeInsets.symmetric(vertical: 3)),
        TextField(

          decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: 'Enter a join code',
          ),
        ),
        Padding(padding: EdgeInsets.symmetric(vertical: 4)),
        ClipRRect(
          borderRadius: BorderRadius.circular(4),
          child: Stack(
            children: <Widget>[
              Positioned.fill(
                child: Container(
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 128, 86, 186)),
                ),
              ),
              TextButton(
                style: TextButton.styleFrom(
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.all(16.0),
                  textStyle: const TextStyle(fontSize: 20),
                ),
                onPressed: () {},
                child:
                    const Text('                 Join a game                 '),
              ),
            ],
          ),
        ),
      ]),
    );
  }

  Widget _setting() {
    // return Container(
    //   height: 335,
    //   width: 370,
    //   decoration: BoxDecoration(
    //     color: Colors.white,
    //     shape: BoxShape.rectangle,
    //     borderRadius: BorderRadius.circular(10),
    //     boxShadow: [
    //       BoxShadow(
    //         color: Colors.black.withOpacity(0.25),
    //         blurRadius: 0,
    //         offset: const Offset(0, 3),
    //       )
    //     ],
    //   ),
    //   child: Column(mainAxisSize: MainAxisSize.min, children: [
    //     const Padding(padding: EdgeInsets.symmetric(vertical: 5)),
    //     Row(
    //       children: [
    //         const Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
    //         const Icon(Icons.settings,
    //             color: Color.fromRGBO(43, 155, 158, 1), size: 24),
    //         const Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
    //         Text('Settings',
    //             style: GoogleFonts.comfortaa(
    //                 textStyle: const TextStyle(
    //                     color: Colors.black,
    //                     fontSize: 15,
    //                     fontWeight: FontWeight.bold)))
    //       ],
    //     ),
    //     Row(
    //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //       children: [
    //         Row(
    //           children: [
    //             const Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
    //             Text('Read aloud',
    //                 style: GoogleFonts.comfortaa(
    //                     textStyle: const TextStyle(
    //                         color: Colors.black,
    //                         fontSize: 13,
    //                         fontWeight: FontWeight.bold))),
    //           ],
    //         ),
    //         Switch(
    //           value: readAloud,
    //           activeColor: Colors.green,
    //           onChanged: (bool value) {
    //             setState(() {
    //               readAloud = value;
    //             });
    //           },
    //         )
    //       ],
    //     ),
    //     Row(
    //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //       children: [
    //         Row(
    //           children: [
    //             const Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
    //             Text('Background music',
    //                 style: GoogleFonts.comfortaa(
    //                     textStyle: const TextStyle(
    //                         color: Colors.black,
    //                         fontSize: 13,
    //                         fontWeight: FontWeight.bold))),
    //           ],
    //         ),
    //         Switch(
    //           value: music,
    //           activeColor: Colors.green,
    //           onChanged: (bool value) {
    //             setState(() {
    //               music = value;
    //             });
    //           },
    //         )
    //       ],
    //     ),
    //     Row(
    //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //       children: [
    //         Row(
    //           children: [
    //             const Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
    //             Text('Sound effects',
    //                 style: GoogleFonts.comfortaa(
    //                     textStyle: const TextStyle(
    //                         color: Colors.black,
    //                         fontSize: 13,
    //                         fontWeight: FontWeight.bold))),
    //           ],
    //         ),
    //         Switch(
    //           value: sound,
    //           activeColor: Colors.green,
    //           onChanged: (bool value) {
    //             setState(() {
    //               sound = value;
    //             });
    //           },
    //         )
    //       ],
    //     ),
    //     Row(
    //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //       children: [
    //         Row(
    //           children: [
    //             const Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
    //             Text('Memes',
    //                 style: GoogleFonts.comfortaa(
    //                     textStyle: const TextStyle(
    //                         color: Colors.black,
    //                         fontSize: 13,
    //                         fontWeight: FontWeight.bold))),
    //           ],
    //         ),
    //         Switch(
    //           value: memes,
    //           activeColor: Colors.green,
    //           onChanged: (bool value) {
    //             setState(() {
    //               memes = value;
    //             });
    //           },
    //         )
    //       ],
    //     ),
    //     const Padding(padding: EdgeInsets.symmetric(vertical: 8)),
    //     Row(
    //       mainAxisAlignment: MainAxisAlignment.start,
    //       children: [
    //         Row(
    //           children: [
    //             const Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
    //             Text('Themes',
    //                 style: GoogleFonts.comfortaa(
    //                     textStyle: const TextStyle(
    //                         color: Colors.black,
    //                         fontSize: 13,
    //                         fontWeight: FontWeight.bold))),
    //           ],
    //         ),
    //       ],
    //     ),
    //   ]),
    // );
    return Container(
      height: 103,
      width: 333,
      decoration: BoxDecoration(
          color: Color.fromARGB(0, 255, 255, 255),
          shape: BoxShape.rectangle,
          border: Border.all(color: Color.fromARGB(252, 0, 0, 0)),
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: [
          Padding(padding: EdgeInsets.symmetric(vertical: 5)),
          Text(
            "Let's get you started",
            style: GoogleFonts.comfortaa(
              textStyle: TextStyle(
                color: Colors.black,
                //fontFamily: "Comfortaa",
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(padding: EdgeInsets.symmetric(vertical: 10)),
          Row(
            children: [
              Padding(padding: EdgeInsets.symmetric(horizontal: 30)),
              ClipRRect(
          borderRadius: BorderRadius.circular(4),
          child: Stack(
            children: <Widget>[
              Positioned.fill(
                child: Container(
                  decoration:  BoxDecoration(
                      color: Color.fromARGB(255, 255, 255, 255),
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Color.fromARGB(255, 128, 86, 186))
                      ),
                ),
              ),
              TextButton(
                style: TextButton.styleFrom(
                  foregroundColor: Color.fromARGB(255, 128, 86, 186),
                  padding: const EdgeInsets.all(16.0),
                  textStyle: const TextStyle(fontSize: 20),
                ),
                onPressed: () {},
                child:
                    const Text('Log in'),
              ),
            ],
          ),
        ),
        Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
        ClipRRect(
          borderRadius: BorderRadius.circular(4),
          child: Stack(
            children: <Widget>[
              Positioned.fill(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                      color: Color.fromARGB(255, 128, 86, 186)),
                ),
              ),
              TextButton(
                style: TextButton.styleFrom(
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.all(16.0),
                  textStyle: const TextStyle(fontSize: 20),
                ),
                onPressed: () {},
                child:
                    const Text('Sign up'),
              ),
            ],
          ),
        )
            ],
          )
        ],
      ),
    );
  }

  Widget _information() {
    return Container(
        child: Column(
      children: [
        Text('Contact us',
            style: GoogleFonts.comfortaa(
                textStyle: const TextStyle(
              color: Color.fromRGBO(136, 136, 138, 1),
              fontSize: 13,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.underline,
            ))),
        Text('Terms of service',
            style: GoogleFonts.comfortaa(
                textStyle: const TextStyle(
              color: Color.fromRGBO(136, 136, 138, 1),
              fontSize: 13,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.underline,
            ))),
        Text('Privacy policy',
            style: GoogleFonts.comfortaa(
                textStyle: const TextStyle(
              color: Color.fromRGBO(136, 136, 138, 1),
              fontSize: 13,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.underline,
            ))),
        Text('v6.23.164.1',
            style: GoogleFonts.comfortaa(
                textStyle: const TextStyle(
              color: Color.fromRGBO(203, 203, 203, 1),
              fontSize: 13,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.underline,
            ))),
      ],
    ));
  }
}

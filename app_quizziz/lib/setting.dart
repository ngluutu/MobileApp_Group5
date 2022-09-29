import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/main.dart';
import 'menubar.dart';
import 'package:google_fonts/google_fonts.dart';

class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
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
            _setting(),
            _information(),
            MenuBar(),
            Padding(
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
          Padding(padding: EdgeInsets.symmetric(vertical: 10)),
          Row(
            children: [
              Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
              Text(
                'Settings',
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

  Widget _appSettings() {
    return Container(
      height: 145,
      width: 370,
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.25),
            blurRadius: 0,
            offset: Offset(0, 3),
          )
        ],
      ),
      child: Column(children: [
        Padding(padding: EdgeInsets.symmetric(vertical: 5)),
        Row(
          children: [
            Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
            Icon(Icons.person,
                color: Color.fromRGBO(244, 169, 52, 1), size: 24),
            Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
            Text('App settings',
                style: GoogleFonts.comfortaa(
                    textStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold)))
          ],
        ),
        Padding(padding: EdgeInsets.symmetric(vertical: 5)),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Language',
                        style: GoogleFonts.comfortaa(
                            textStyle: TextStyle(
                                color: Colors.black,
                                fontSize: 13,
                                fontWeight: FontWeight.bold))),
                    Padding(padding: EdgeInsets.symmetric(vertical: 1)),
                    Text('Vietnamese',
                        style: GoogleFonts.comfortaa(
                            textStyle: TextStyle(
                                color: Color.fromRGBO(179, 179, 179, 1),
                                fontSize: 11,
                                fontWeight: FontWeight.bold)))
                  ],
                ),
              ],
            ),
            IconButton(onPressed: () {}, icon: Icon(Icons.chevron_right)),
          ],
        ),
        //Padding(padding: EdgeInsets.symmetric(vertical: 5)),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
                Text('Change account type',
                    style: GoogleFonts.comfortaa(
                        textStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                            fontWeight: FontWeight.bold))),
              ],
            ),
            IconButton(onPressed: () {}, icon: Icon(Icons.chevron_right)),
          ],
        ),
      ]),
    );
  }

  Widget _setting() {
    return Container(
      height: 335,
      width: 370,
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.25),
            blurRadius: 0,
            offset: Offset(0, 3),
          )
        ],
      ),
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        Padding(padding: EdgeInsets.symmetric(vertical: 5)),
        Row(
          children: [
            Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
            Icon(Icons.settings,
                color: Color.fromRGBO(43, 155, 158, 1), size: 24),
            Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
            Text('Settings',
                style: GoogleFonts.comfortaa(
                    textStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold)))
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
                Text('Read aloud',
                    style: GoogleFonts.comfortaa(
                        textStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                            fontWeight: FontWeight.bold))),
              ],
            ),
            Switch(
              value: readAloud,
              activeColor: Colors.green,
              onChanged: (bool value) {
                setState(() {
                  readAloud = value;
                });
              },
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
                Text('Background music',
                    style: GoogleFonts.comfortaa(
                        textStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                            fontWeight: FontWeight.bold))),
              ],
            ),
            Switch(
              value: music,
              activeColor: Colors.green,
              onChanged: (bool value) {
                setState(() {
                  music = value;
                });
              },
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
                Text('Sound effects',
                    style: GoogleFonts.comfortaa(
                        textStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                            fontWeight: FontWeight.bold))),
              ],
            ),
            Switch(
              value: sound,
              activeColor: Colors.green,
              onChanged: (bool value) {
                setState(() {
                  sound = value;
                });
              },
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
                Text('Memes',
                    style: GoogleFonts.comfortaa(
                        textStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                            fontWeight: FontWeight.bold))),
              ],
            ),
            Switch(
              value: memes,
              activeColor: Colors.green,
              onChanged: (bool value) {
                setState(() {
                  memes = value;
                });
              },
            )
          ],
        ),
        Padding(padding: EdgeInsets.symmetric(vertical: 8)),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
                Text('Themes',
                    style: GoogleFonts.comfortaa(
                        textStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                            fontWeight: FontWeight.bold))),
              ],
            ),
          ],
        ),
      ]),
    );
  }

  Widget _information() {
    return Container(
        child: Column(
      children: [
        Text('Contact us',
            style: GoogleFonts.comfortaa(
                textStyle: TextStyle(
              color: Color.fromRGBO(136, 136, 138, 1),
              fontSize: 13,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.underline,
            ))),
        Text('Terms of service',
            style: GoogleFonts.comfortaa(
                textStyle: TextStyle(
              color: Color.fromRGBO(136, 136, 138, 1),
              fontSize: 13,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.underline,
            ))),
        Text('Privacy policy',
            style: GoogleFonts.comfortaa(
                textStyle: TextStyle(
              color: Color.fromRGBO(136, 136, 138, 1),
              fontSize: 13,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.underline,
            ))),
        Text('v6.23.164.1',
            style: GoogleFonts.comfortaa(
                textStyle: TextStyle(
              color: Color.fromRGBO(203, 203, 203, 1),
              fontSize: 13,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.underline,
            ))),
      ],
    ));
  }
}

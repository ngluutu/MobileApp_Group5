// ignore_for_file: use_colored_box
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/globals.dart' as globals;
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  AudioPlayer player = AudioPlayer();
  String audioasset = 'assets/Kalimba.mp3';
  bool isplaying = false;
  bool audioplayed = false;
  late Uint8List audiobytes;

  @override
  void initState() {
    // Future.delayed(Duration.zero, () async {
    //   final ByteData bytes =
    //       await rootBundle.load(audioasset); //load audio from assets
    //   audiobytes =
    //       bytes.buffer.asUint8List(bytes.offsetInBytes, bytes.lengthInBytes);
    //   //convert ByteData to Uint8List

    //   player.onDurationChanged.listen((Duration d) {
    //     //get the duration of audio
    //     setState(() {});
    //   });

    //   player.onAudioPositionChanged.listen((Duration p) {
    //     setState(() {
    //       //refresh the UI
    //     });
    //   });
    // });
    super.initState();
  }

  bool readAloud = false;
  bool music = false;
  bool sound = false;
  bool memes = false;
  String language = 'English';
  Locale updateLanguage() {
    if (globals.language == 'English') {
      return const Locale('en', 'en');
    } else if (globals.language == 'French') {
      return const Locale('en', 'fr');
    } else {
      return const Locale('en', 'vn');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        //minimum: EdgeInsets.only(left: 10, right: 10),
        child: Container(
          //width: 390,
          color: Colors.white,
          margin: const EdgeInsets.only(left: 10, right: 10),
          child: ListView(
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
              ),
              _appSettings(),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
              ),
              _setting(),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
              ),
              _information(),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
              ),
            ],
          ),
        ),
      ),
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
              'Settings'.tr,
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

  Widget _appSettings() {
    return Container(
      height: 145,
      width: 370,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.25),
            offset: const Offset(0, 3),
          )
        ],
      ),
      child: Column(
        children: [
          const Padding(padding: EdgeInsets.symmetric(vertical: 5)),
          Row(
            children: [
              const Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
              const Icon(
                Icons.person,
                color: Color.fromRGBO(244, 169, 52, 1),
                size: 24,
              ),
              const Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
              Text(
                'App settings'.tr,
                style: GoogleFonts.comfortaa(
                  textStyle: const TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          ),
          const Padding(padding: EdgeInsets.symmetric(vertical: 5)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Language'.tr,
                        style: GoogleFonts.comfortaa(
                          textStyle: const TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const Padding(padding: EdgeInsets.symmetric(vertical: 1)),
                      Text(
                        globals.language,
                        style: GoogleFonts.comfortaa(
                          textStyle: const TextStyle(
                            color: Color.fromRGBO(179, 179, 179, 1),
                            fontSize: 11,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
              IconButton(
                onPressed: () {
                  buildDialog(context);
                },
                icon: const Icon(Icons.chevron_right),
              ),
            ],
          ),
          //Padding(padding: EdgeInsets.symmetric(vertical: 5)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
                  Text(
                    'Change account type'.tr,
                    style: GoogleFonts.comfortaa(
                      textStyle: const TextStyle(
                        color: Colors.black,
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.chevron_right),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _setting() {
    return Container(
      height: 340,
      width: 370,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.25),
            offset: const Offset(0, 3),
          )
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Padding(padding: EdgeInsets.symmetric(vertical: 5)),
          Row(
            children: [
              const Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
              const Icon(
                Icons.settings,
                color: Color.fromRGBO(43, 155, 158, 1),
                size: 24,
              ),
              const Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
              Text(
                'Settings'.tr,
                style: GoogleFonts.comfortaa(
                  textStyle: const TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
                  Text(
                    'Read aloud'.tr,
                    style: GoogleFonts.comfortaa(
                      textStyle: const TextStyle(
                        color: Colors.black,
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
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
                  const Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
                  Text(
                    'Background music'.tr,
                    style: GoogleFonts.comfortaa(
                      textStyle: const TextStyle(
                        color: Colors.black,
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              Switch(
                value: music,
                activeColor: Colors.green,
                onChanged: (bool value) async {
                  isplaying = !value;
                  if (!isplaying) {
                    final int result = await player.playBytes(audiobytes);
                    if (result == 1) {
                      setState(() {
                        isplaying = true;
                      });
                    }
                  } else {
                    final int result = await player.pause();
                    if (result == 1) {
                      setState(() {
                        isplaying = false;
                      });
                    }
                  }
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
                  const Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
                  Text(
                    'Sound effects'.tr,
                    style: GoogleFonts.comfortaa(
                      textStyle: const TextStyle(
                        color: Colors.black,
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
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
                  const Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
                  Text(
                    'Memes'.tr,
                    style: GoogleFonts.comfortaa(
                      textStyle: const TextStyle(
                        color: Colors.black,
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
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
          const Padding(padding: EdgeInsets.symmetric(vertical: 8)),
          Row(
            children: [
              Row(
                children: [
                  const Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
                  Text(
                    'Themes'.tr,
                    style: GoogleFonts.comfortaa(
                      textStyle: const TextStyle(
                        color: Colors.black,
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          const Padding(padding: EdgeInsets.symmetric(vertical: 5)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                style: ButtonStyle(
                  fixedSize:
                      const MaterialStatePropertyAll<Size>(Size.square(65)),
                  shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  backgroundColor: const MaterialStatePropertyAll<Color>(
                    Color.fromRGBO(217, 217, 217, 1),
                  ),
                ),
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/classic.png',
                      height: 30,
                      width: 30,
                    ),
                    Text(
                      'Classic',
                      style: GoogleFonts.comfortaa(
                        textStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 8,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                ),
                onPressed: () {},
              ),
              TextButton(
                style: ButtonStyle(
                  fixedSize:
                      const MaterialStatePropertyAll<Size>(Size.square(65)),
                  shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  backgroundColor: const MaterialStatePropertyAll<Color>(
                    Color.fromRGBO(217, 217, 217, 1),
                  ),
                ),
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/frameim.jpg',
                      height: 30,
                      width: 30,
                    ),
                    Text(
                      'Frame Im...',
                      style: GoogleFonts.comfortaa(
                        textStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 8,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                ),
                onPressed: () {},
              ),
              TextButton(
                style: ButtonStyle(
                  fixedSize:
                      const MaterialStatePropertyAll<Size>(Size.square(65)),
                  shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  backgroundColor: const MaterialStatePropertyAll<Color>(
                    Color.fromRGBO(217, 217, 217, 1),
                  ),
                ),
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/touchdown.png', width: 30, height: 30),
                    Text(
                      'Touchdo...',
                      style: GoogleFonts.comfortaa(
                        textStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 8,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                ),
                onPressed: () {},
              ),
              TextButton(
                style: ButtonStyle(
                  fixedSize:
                      const MaterialStatePropertyAll<Size>(Size.square(65)),
                  shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  backgroundColor: const MaterialStatePropertyAll<Color>(
                    Color.fromRGBO(217, 217, 217, 1),
                  ),
                ),
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/dogsville.jpg',
                      width: 30,
                      height: 30,
                    ),
                    Text(
                      'Dogsville',
                      style: GoogleFonts.comfortaa(
                        textStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 8,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                ),
                onPressed: () {},
              ),
              TextButton(
                style: ButtonStyle(
                  fixedSize:
                      const MaterialStatePropertyAll<Size>(Size.square(65)),
                  shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  backgroundColor: const MaterialStatePropertyAll<Color>(
                    Color.fromRGBO(217, 217, 217, 1),
                  ),
                ),
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/darknight.jpg', width: 30, height: 30),
                    Text(
                      'Dark Nig...',
                      style: GoogleFonts.comfortaa(
                        textStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 8,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                ),
                onPressed: () {},
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _information() {
    return Column(
      children: [
        Text(
          'Contact us'.tr,
          style: GoogleFonts.comfortaa(
            textStyle: const TextStyle(
              color: Color.fromRGBO(136, 136, 138, 1),
              fontSize: 13,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.underline,
            ),
          ),
        ),
        Text(
          'Terms of service'.tr,
          style: GoogleFonts.comfortaa(
            textStyle: const TextStyle(
              color: Color.fromRGBO(136, 136, 138, 1),
              fontSize: 13,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.underline,
            ),
          ),
        ),
        Text(
          'Privacy policy'.tr,
          style: GoogleFonts.comfortaa(
            textStyle: const TextStyle(
              color: Color.fromRGBO(136, 136, 138, 1),
              fontSize: 13,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.underline,
            ),
          ),
        ),
        Text(
          'v6.23.164.1',
          style: GoogleFonts.comfortaa(
            textStyle: const TextStyle(
              color: Color.fromRGBO(203, 203, 203, 1),
              fontSize: 13,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.underline,
            ),
          ),
        ),
      ],
    );
  }

  // ignore: always_declare_return_types, type_annotate_public_apis
  buildDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (builder) {
        return AlertDialog(
          title: const Text('Choose a language'),
          content: SizedBox(
            width: double.maxFinite,
            child: DropdownButton<String>(
              value: globals.language,
              items: <String>['English', 'Vietnamese', 'French'].map((value) {
                return DropdownMenuItem(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (text) {
                setState(() {
                  globals.language = text!;
                  Get.updateLocale(updateLanguage());
                });
              },
            ),
          ),
        );
      },
    );
  }
}

class AppBarSetting extends StatelessWidget {
  const AppBarSetting({super.key});

  @override
  Widget build(BuildContext context) {
    return top();
  }

  Widget top() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(padding: EdgeInsets.symmetric(vertical: 2.25)),
        Row(
          children: [
            const Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
            Text(
              'Settings'.tr,
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
        const Padding(padding: EdgeInsets.symmetric(vertical: 12.25)),
        const Divider(
          color: Color.fromRGBO(196, 196, 196, 1),
          height: 0,
        )
      ],
    );
  }
}

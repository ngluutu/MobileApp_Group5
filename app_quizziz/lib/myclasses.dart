import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class MyClasses extends StatefulWidget {
  const MyClasses({super.key});

  @override
  State<MyClasses> createState() => _MyClassesState();
}

class _MyClassesState extends State<MyClasses> {
  @override
  Widget build(BuildContext context) {
    // ignore: use_colored_box
    return Scaffold(
      // ignore: use_colored_box
      body: SafeArea(
        // ignore: use_colored_box
        child: Container(
          color: Colors.white,
          child: Center(
            //mainAxisAlignment: MainAxisAlignment.spaceAround,
            child: Column(
              children: [
                //top(),
                const Padding(padding: EdgeInsets.symmetric(vertical: 10)),
                centerWidget(),
              ],
            ),
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
              'My Classes'.tr,
              style: GoogleFonts.comfortaa(
                textStyle: const TextStyle(
                  color: Colors.black,
                  //fontFamily: "Comfortaa",
                  fontSize: 24,
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

  TextButton _joinAClass() {
    return TextButton(
      child: Container(
        height: 60,
        width: 370,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: const Color.fromRGBO(137, 84, 192, 1),
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(
              blurRadius: 4,
              color: Color.fromRGBO(0, 0, 0, 0.25),
              offset: Offset(0, 4),
            )
          ],
        ),
        child: Text(
          'Join a class'.tr,
          style: GoogleFonts.comfortaa(
            textStyle: const TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        ),
      ),
      onPressed: () {},
    );
  }

  Widget centerWidget() {
    // ignore: use_colored_box
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Image.asset('assets/myclasses.png', height: 175, width: 175),
          Text(
            "You haven't joined any classes yet".tr,
            style: GoogleFonts.comfortaa(
              textStyle: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 20),
          ),
          Text(
            'Quizizz is more fun with friend.'.tr,
            style: GoogleFonts.comfortaa(
              textStyle: const TextStyle(
                fontSize: 18,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 20),
          ),
          _joinAClass(),
        ],
      ),
    );
  }
}

class AppBarClasses extends StatelessWidget {
  const AppBarClasses({super.key});

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
              'My Classes'.tr,
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

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePageDefault extends StatefulWidget {
  const HomePageDefault({super.key});

  @override
  State<HomePageDefault> createState() => _HomePageDefault();
}

class AppBarHome extends StatelessWidget {
  const AppBarHome({super.key});

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
            Image.asset('assets/quizizz_logo.jpg', width: 109, height: 40)
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

class _HomePageDefault extends State<HomePageDefault> {
  final _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Padding(padding: EdgeInsets.symmetric(vertical: 10)),
            _appSettings(),
            const Padding(padding: EdgeInsets.symmetric(vertical: 20)),
            _setting()
          ],
        ),
      ),
    );
  }

  Widget _setting() {
    return Container(
      height: 130,
      margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: const Color.fromARGB(0, 255, 255, 255),
        border: Border.all(color: const Color.fromARGB(252, 0, 0, 0)),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Let's get you started".tr,
            style: GoogleFonts.comfortaa(
              textStyle: const TextStyle(
                color: Colors.black,
                //fontFamily: "Comfortaa",
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Padding(padding: EdgeInsets.symmetric(vertical: 5)),
          FittedBox(
            child: Row(
              children: [logIn(), signUp()],
            ),
          )
        ],
      ),
    );
  }

  TextButton logIn() {
    return TextButton(
      onPressed: () {},
      child: Container(
        height: 40,
        width: 150,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.purple),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Text(
            'Log in'.tr,
            textAlign: TextAlign.justify,
            style: GoogleFonts.comfortaa(
              textStyle: const TextStyle(fontSize: 15, color: Colors.purple),
            ),
          ),
        ),
      ),
    );
  }

  TextButton signUp() {
    return TextButton(
      onPressed: () {},
      child: Container(
        height: 40,
        width: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.purple,
        ),
        child: Center(
          child: Text(
            'Sign up'.tr,
            textAlign: TextAlign.justify,
            style: GoogleFonts.comfortaa(
              textStyle: const TextStyle(fontSize: 15, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }

  Widget _appSettings() {
    return Container(
      height: 150,
      margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 238, 238, 238),
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          width: 2.0,
          color: const Color.fromARGB(255, 218, 217, 217),
        ),
      ),
      child: FittedBox(
        child: Column(
          children: [enterCode(), join()],
        ),
      ),
    );
  }

  TextButton enterCode() {
    return TextButton(
      onPressed: () {},
      child: Container(
        height: 55,
        width: 300,
        margin: const EdgeInsets.only(left: 10, right: 10),
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
            hintText: 'Enter join code'.tr,
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
    );
  }

  TextButton join() {
    return TextButton(
      onPressed: () {},
      child: Container(
        height: 55,
        width: 300,
        margin: const EdgeInsets.only(left: 10, right: 10),
        decoration: BoxDecoration(
          color: Colors.purple,
          borderRadius: BorderRadius.circular(7),
        ),
        child: Center(
          child: Text(
            'Join a game'.tr,
            style: GoogleFonts.comfortaa(
              textStyle: const TextStyle(fontSize: 13, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}

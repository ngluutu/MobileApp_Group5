import 'package:flutter/material.dart';
import 'package:resizable_widget/resizable_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class MenuBar extends StatelessWidget {
  const MenuBar({super.key});

  @override
  Widget build(BuildContext context) {
    return _menuBar();
  }

  Widget _menuBar() {
    return Container(
      height: 46,
      width: 327,
      //alignment: Alignment.bottomCenter,
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.8),
            blurRadius: 4,
            offset: Offset(0, 4),
          )
        ],
      ),
      child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _homeButton(),
            _searchButton(),
            _activityButton(),
            _classesButton(),
            _settingButton()
          ]),
    );
  }

  TextButton _homeButton() {
    return TextButton(
      style: ButtonStyle(
          fixedSize: MaterialStatePropertyAll<Size>(Size.square(40))),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            size: 24,
            Icons.home_rounded,
            color: Colors.black,
          ),
          Text('Home',
              style: GoogleFonts.comfortaa(
                  textStyle: TextStyle(fontSize: 10, color: Colors.black)))
        ],
      ),
      onPressed: () {},
    );
  }

  TextButton _searchButton() {
    return TextButton(
      style: ButtonStyle(
          fixedSize: MaterialStatePropertyAll<Size>(Size.square(40))),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            size: 24,
            Icons.search_rounded,
            color: Colors.black,
          ),
          Text('Search',
              style: GoogleFonts.comfortaa(
                  textStyle: TextStyle(fontSize: 10, color: Colors.black)))
        ],
      ),
      onPressed: () {},
    );
  }

  TextButton _activityButton() {
    return TextButton(
      style: ButtonStyle(
          fixedSize: MaterialStatePropertyAll<Size>(Size.square(40))),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            size: 24,
            Icons.history_rounded,
            color: Colors.black,
          ),
          Text('Activity',
              style: GoogleFonts.comfortaa(
                  textStyle: TextStyle(fontSize: 10, color: Colors.black)))
        ],
      ),
      onPressed: () {},
    );
  }

  TextButton _classesButton() {
    return TextButton(
      style: ButtonStyle(
          fixedSize: MaterialStatePropertyAll<Size>(Size.square(40))),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            size: 24,
            Icons.people_rounded,
            color: Colors.black,
          ),
          Text('Classes',
              style: GoogleFonts.comfortaa(
                  textStyle: TextStyle(fontSize: 10, color: Colors.black)))
        ],
      ),
      onPressed: () {},
    );
  }

  TextButton _settingButton() {
    return TextButton(
      style: ButtonStyle(
          fixedSize: MaterialStatePropertyAll<Size>(Size.square(40))),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            size: 24,
            Icons.settings_rounded,
            color: Colors.black,
          ),
          Text('Setting',
              style: GoogleFonts.comfortaa(
                  textStyle: TextStyle(fontSize: 10, color: Colors.black)))
        ],
      ),
      onPressed: () {},
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MenuBar extends StatelessWidget {
  const MenuBar({super.key});

  @override
  Widget build(BuildContext context) {
    return _menuBar(context);
  }

  Widget _menuBar(BuildContext context) {
    return Container(
      height: 55,
      width: 360,
      //alignment: Alignment.bottomCenter,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.25),
            blurRadius: 4,
            offset: const Offset(0, 4),
          )
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _homeButton(context),
          _searchButton(context),
          _activityButton(context),
          _classesButton(context),
          _settingButton(context)
        ],
      ),
    );
  }

  TextButton _homeButton(BuildContext context) {
    return TextButton(
      style: const ButtonStyle(
        fixedSize: MaterialStatePropertyAll<Size>(Size.square(55)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(
            size: 24,
            Icons.home_rounded,
            color: Colors.black,
          ),
          Text(
            'Home',
            style: GoogleFonts.comfortaa(
              textStyle: const TextStyle(fontSize: 10, color: Colors.black),
            ),
          )
        ],
      ),
      onPressed: () {
        Navigator.pushNamed(context, 'home');
      },
    );
  }

  TextButton _searchButton(BuildContext context) {
    return TextButton(
      style: const ButtonStyle(
        fixedSize: MaterialStatePropertyAll<Size>(Size.square(55)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(
            size: 24,
            Icons.search_rounded,
            color: Colors.black,
          ),
          Text(
            'Search',
            style: GoogleFonts.comfortaa(
              textStyle: const TextStyle(fontSize: 10, color: Colors.black),
            ),
          )
        ],
      ),
      onPressed: () {
        Navigator.pushNamed(context, 'search');
      },
    );
  }

  TextButton _activityButton(BuildContext context) {
    return TextButton(
      style: const ButtonStyle(
        fixedSize: MaterialStatePropertyAll<Size>(Size.square(55)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(
            size: 24,
            Icons.history_rounded,
            color: Colors.black,
          ),
          Text(
            'Activity',
            style: GoogleFonts.comfortaa(
              textStyle: const TextStyle(fontSize: 10, color: Colors.black),
            ),
          )
        ],
      ),
      onPressed: () {
        Navigator.pushNamed(context, 'activity');
      },
    );
  }

  TextButton _classesButton(BuildContext context) {
    return TextButton(
      style: const ButtonStyle(
        fixedSize: MaterialStatePropertyAll<Size>(Size.square(55)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(
            size: 24,
            Icons.people_rounded,
            color: Colors.black,
          ),
          Text(
            'Classes',
            style: GoogleFonts.comfortaa(
              textStyle: const TextStyle(fontSize: 10, color: Colors.black),
            ),
          )
        ],
      ),
      onPressed: () {
        Navigator.pushNamed(context, 'myclasses');
      },
    );
  }

  TextButton _settingButton(BuildContext context) {
    return TextButton(
      style: const ButtonStyle(
        fixedSize: MaterialStatePropertyAll<Size>(Size.square(55)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(
            size: 24,
            Icons.settings_rounded,
            color: Colors.black,
          ),
          Text(
            'Setting',
            style: GoogleFonts.comfortaa(
              textStyle: const TextStyle(fontSize: 10, color: Colors.black),
            ),
          )
        ],
      ),
      onPressed: () {
        Navigator.pushNamed(context, 'setting');
      },
    );
  }
}

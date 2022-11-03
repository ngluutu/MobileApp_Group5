import 'package:flutter/material.dart';
import 'package:flutter_application_1/activity_new.dart';
import 'package:flutter_application_1/activity_running.dart';
import 'package:flutter_application_1/home.dart';
import 'package:flutter_application_1/myclasses.dart';
import 'package:flutter_application_1/search.dart';
import 'package:flutter_application_1/setting.dart';
import 'package:get/get.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
            ),
            getAppBar(),
          ],
        ),
      ),
      body: getBody(),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 25, left: 15, right: 15),
        // ignore: use_decorated_box
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.25),
                blurRadius: 4,
                offset: const Offset(0, 4),
              )
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(25),
            child: BottomNavigationBar(
              currentIndex: selectedIndex,
              onTap: (int index) {
                onTapHandler(index);
              },
              selectedItemColor: const Color.fromRGBO(244, 169, 52, 1),
              unselectedItemColor: Colors.black,
              backgroundColor: Colors.blue,
              items: [
                BottomNavigationBarItem(
                  icon: const Icon(
                    size: 24,
                    Icons.home_rounded,
                  ),
                  label: 'Home'.tr,
                ),
                BottomNavigationBarItem(
                  icon: const Icon(
                    size: 24,
                    Icons.search_rounded,
                  ),
                  label: 'Search'.tr,
                ),
                BottomNavigationBarItem(
                  icon: const Icon(
                    size: 24,
                    Icons.history_rounded,
                  ),
                  label: 'Activity'.tr,
                ),
                BottomNavigationBarItem(
                  icon: const Icon(
                    size: 24,
                    Icons.people_rounded,
                  ),
                  label: 'Classes'.tr,
                ),
                BottomNavigationBarItem(
                  icon: const Icon(
                    size: 24,
                    Icons.settings_rounded,
                  ),
                  label: 'Setting'.tr,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget getBody() {
    if (selectedIndex == 0) {
      return const HomePage();
    } else if (selectedIndex == 1) {
      return const SearchPage();
    } else if (selectedIndex == 2) {
      return const ActivityState();
    } else if (selectedIndex == 3) {
      return const MyClasses();
    } else {
      return const Setting();
    }
  }

  Widget getAppBar() {
    if (selectedIndex == 0) {
      return const AppBarHome();
    } else if (selectedIndex == 1) {
      return const AppBarSearch();
    } else if (selectedIndex == 2) {
      return const AppBarActivity();
    } else if (selectedIndex == 3) {
      return const AppBarClasses();
    } else {
      return const AppBarSetting();
    }
  }

  void onTapHandler(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}

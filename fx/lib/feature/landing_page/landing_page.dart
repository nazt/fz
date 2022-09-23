import 'package:flutter/material.dart';

import '../../foundation/sp_icon/sp_icon.dart';
import '../categories/categories.dart';
import '../home_page/home_page.dart';
import '../profile/profile.dart';

class LandingPage extends StatefulWidget {
  LandingPage({Key? key}) : super(key: key);

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int currentIndex = 0;
  List<Widget> pages = [HomePage(), Categories(), Profile(), Profile()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        selectedItemColor: const Color(0xfffe416c),
        selectedLabelStyle: const TextStyle(fontSize: 13),
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: SPIcon(
              assetname: "logo-black.png",
              index: 0,
              currentIndex: currentIndex,
            ),
            label: "Devices",
          ),
          BottomNavigationBarItem(
            icon: SPIcon(
              assetname: "categories.png",
              index: 1,
              currentIndex: currentIndex,
            ),
            label: "Stats",
          ),
          BottomNavigationBarItem(
            icon: SPIcon(
              assetname: "profile.png",
              index: 2,
              currentIndex: currentIndex,
            ),
            label: "Profile",
          ),
          BottomNavigationBarItem(
            icon: SPIcon(
              assetname: "profile.png",
              index: 3,
              currentIndex: currentIndex,
            ),
            label: "Settings",
          ),
        ],
      ),
      body: pages[currentIndex],
    );
  }
}

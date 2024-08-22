// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:facebook_clone/utils/color_constants.dart';
import 'package:facebook_clone/view/dummy_db.dart';
import 'package:facebook_clone/view/friendspage_screen/friendspage_screen.dart';
import 'package:facebook_clone/view/home_screen/home_screen.dart';
import 'package:facebook_clone/view/marketplace_page/marketplace_page.dart';
import 'package:facebook_clone/view/menu_page/menu_page.dart';
import 'package:facebook_clone/view/notifications_page/notifications_page.dart';
import 'package:facebook_clone/view/video_screen/video_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomNavbarScreen extends StatefulWidget {
  const BottomNavbarScreen({super.key});

  @override
  State<BottomNavbarScreen> createState() => _BottomNavbarScreenState();
}

class _BottomNavbarScreenState extends State<BottomNavbarScreen> {
  List screenlist = [
    HomeScreen(),
    VideoScreen(),
    FriendspageScreen(),
    MarketplacePage(),
    NotificationsPage(),
    MenuPage()
  ];
  int selectedindex = 0;

  static get index => null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.maingrey,
      body: screenlist[selectedindex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedindex,
        type: BottomNavigationBarType.fixed,
        backgroundColor: ColorConstants.white,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: ColorConstants.blue,
        unselectedItemColor: ColorConstants.grey,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
          BottomNavigationBarItem(
              icon: FaIcon(
                FontAwesomeIcons.squareCaretRight,
                size: 18,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(Icons.people_alt_outlined), label: ""),
          BottomNavigationBarItem(
              icon: FaIcon(
                FontAwesomeIcons.store,
                size: 18,
              ),
              label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.notifications), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.menu), label: "")
        ],
        onTap: (value) {
          selectedindex = value;
          setState(() {});
        },
      ),
    );
  }
}

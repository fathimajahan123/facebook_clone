// ignore_for_file: prefer_const_constructors

import 'package:facebook_clone/utils/image_constants.dart';
import 'package:facebook_clone/view/bottom_navbar_screen/bottom_navbar_screen.dart';
import 'package:facebook_clone/view/home_screen/home_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 1)).then((value) {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => BottomNavbarScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              ImageConstants.facebook,
              height: 500,
            ),
          ),
          Image.asset(height: 15, ImageConstants.meta)
        ],
      ),
    );
  }
}

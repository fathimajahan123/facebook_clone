// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:facebook_clone/utils/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MenuCard extends StatelessWidget {
  const MenuCard({super.key, required this.icon, required this.text});

  final FaIcon icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(color: Colors.grey, blurStyle: BlurStyle.outer, blurRadius: 5)
      ], borderRadius: BorderRadius.circular(10), color: ColorConstants.white),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [(icon), Text(text)],
        ),
      ),
    );
  }
}

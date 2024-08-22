// ignore_for_file: prefer_const_constructors

import 'package:facebook_clone/view/home_screen/reelsscreen/reelsscreen.dart';
import 'package:flutter/material.dart';

class ReelsCard extends StatelessWidget {
  const ReelsCard({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Reelsscreen()));
      },
      child: Container(
        height: 300,
        width: 150,
        decoration: BoxDecoration(
          color: Colors.blue,
          image: DecorationImage(fit: BoxFit.cover, image: NetworkImage(image)),
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}

// ignore_for_file: prefer_const_constructors

import 'package:facebook_clone/utils/color_constants.dart';
import 'package:facebook_clone/view/home_screen/reelsscreen/reelsscreen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreenCard extends StatelessWidget {
  const HomeScreenCard({
    super.key,
    required this.imagepath,
    required this.name,
    required this.showaddicon,
  });
  final String imagepath;
  final String name;
  final bool showaddicon;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => Reelsscreen()));
          },
          child: CircleAvatar(
              radius: 40,
              backgroundColor: ColorConstants.blue,
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  CircleAvatar(
                    radius: 38,
                    backgroundImage: NetworkImage(
                      imagepath,
                    ),
                  ),
                  if (showaddicon)
                    Positioned(
                        left: 50,
                        top: 60,
                        child: CircleAvatar(
                          radius: 10,
                          backgroundColor: ColorConstants.blue,
                          child: Icon(
                            Icons.add,
                            color: ColorConstants.white,
                            size: 20,
                          ),
                        ))
                ],
              )),
        ),
        SizedBox(
          height: 6,
        ),
        Text(name)
      ],
    );
  }
}

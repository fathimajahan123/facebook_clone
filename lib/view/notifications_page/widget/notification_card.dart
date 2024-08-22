// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:facebook_clone/utils/color_constants.dart';
import 'package:flutter/material.dart';

class NotificationCard extends StatelessWidget {
  const NotificationCard(
      {super.key,
      required this.image,
      required this.name,
      required this.count});
  final String image;
  final String name;
  final String count;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorConstants.maingrey,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            child: CircleAvatar(
              backgroundImage: NetworkImage(image),
              radius: 40,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    "you have new friend suggestion :  ",
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Icon(Icons.more_horiz)
                ],
              ),
              Row(
                children: [
                  Text(
                    name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(count)
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}

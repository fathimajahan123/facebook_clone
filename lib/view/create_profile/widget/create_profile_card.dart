// ignore_for_file: prefer_const_constructors

import 'package:facebook_clone/utils/color_constants.dart';
import 'package:flutter/material.dart';

class CreateProfileCard extends StatelessWidget {
  const CreateProfileCard({
    super.key,
    required this.icon,
    required this.title1,
    required this.title2,
    required this.text1,
    required this.text2,
  });

  final Icon icon;
  final String title1;
  final String title2;
  final String text1;
  final String text2;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(width: .2),
            borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: Column(
            children: [
              Row(
                children: [
                  CircleAvatar(
                    child: (icon),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [Text(title1), Text(title2)],
                  ),
                  Spacer(),
                  CircleAvatar(
                    radius: 10,
                    backgroundColor: ColorConstants.black,
                    child: CircleAvatar(
                      radius: 9,
                      backgroundColor: ColorConstants.white,
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 70),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.circle,
                          size: 5,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(text1)
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.circle,
                          size: 5,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(text2)
                      ],
                    ),
                    Text(
                      "Learn more",
                      style: TextStyle(color: ColorConstants.blue),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

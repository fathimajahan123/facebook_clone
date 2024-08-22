// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:facebook_clone/utils/color_constants.dart';
import 'package:facebook_clone/view/create_profile/widget/create_profile_card.dart';
import 'package:facebook_clone/view/dummy_db.dart';
import 'package:facebook_clone/view/profile_screen/profile_screen.dart';
import 'package:flutter/material.dart';

class CreateProfie extends StatelessWidget {
  const CreateProfie({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.white,
      appBar: AppBar(
        centerTitle: true,
        leading: InkWell(
            onTap: () {
              Navigator.pop(context,
                  MaterialPageRoute(builder: (context) => ProfileScreen()));
            },
            child: Icon(Icons.close)),
        title: Text(
          "Create",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          Text(
            "Cancel",
            style: TextStyle(color: ColorConstants.deepblue),
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "New profile or page",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Column(
              children: List.generate(
                  2,
                  (index) => CreateProfileCard(
                      icon: DummyDb.createprofiledata[index]["icon"],
                      title1: DummyDb.createprofiledata[index]["title1"],
                      title2: DummyDb.createprofiledata[index]["title2"],
                      text1: DummyDb.createprofiledata[index]["text1"],
                      text2: DummyDb.createprofiledata[index]["text2"])),
            )
          ],
        ),
      ),
    );
  }
}

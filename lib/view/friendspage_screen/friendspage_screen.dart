// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:facebook_clone/utils/color_constants.dart';
import 'package:facebook_clone/view/dummy_db.dart';
import 'package:facebook_clone/view/friendspage_screen/suggestionpage/suggestionpage.dart';
import 'package:facebook_clone/view/friendspage_screen/widget/friendrequest_card.dart';
import 'package:facebook_clone/view/friendspage_screen/widget/peopleknow_card.dart';
import 'package:flutter/material.dart';

class FriendspageScreen extends StatelessWidget {
  const FriendspageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.white,
      appBar: AppBar(
        backgroundColor: ColorConstants.white,
        title: Text(
          "Friends",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        actions: [
          Icon(
            Icons.search,
            size: 30,
            color: Colors.black,
          ),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Suggestionpage()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: ColorConstants.maingrey),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 8),
                      child: Text(
                        "Suggestions",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: ColorConstants.maingrey),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                    child: Text(
                      "Your friends",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Divider(),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Text(
                  "Friend requests",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                Spacer(),
                Text(
                  "See all",
                  style: TextStyle(color: ColorConstants.blue, fontSize: 18),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView(
                children: [
                  ListView.separated(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) => Friendrequest_card(
                      image: DummyDb.friendrequest[index]["image"],
                      name: DummyDb.friendrequest[index]["name"],
                      date: DummyDb.friendrequest[index]["date"],
                    ),
                    separatorBuilder: (context, index) => SizedBox(
                      height: 15,
                    ),
                    itemCount: 5,
                  ),
                  Divider(
                    thickness: 1,
                  ),
                  Text(
                    "People you may know",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ListView.separated(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) => PeopleknowCard(
                        image: DummyDb.peopleyouknow[index]["image"],
                        name: DummyDb.peopleyouknow[index]["name"]),
                    separatorBuilder: (context, index) => SizedBox(height: 15),
                    itemCount: DummyDb.friendrequest.length,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

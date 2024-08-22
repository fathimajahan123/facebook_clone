// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:facebook_clone/utils/color_constants.dart';
import 'package:facebook_clone/utils/image_constants.dart';
import 'package:facebook_clone/view/dummy_db.dart';
import 'package:facebook_clone/view/home_screen/widgets/home_screen_card.dart';
import 'package:facebook_clone/view/home_screen/widgets/post_card.dart';
import 'package:facebook_clone/view/home_screen/widgets/reels_card.dart';
import 'package:facebook_clone/view/profile_screen/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.maingrey,
      appBar: AppBar(
        backgroundColor: ColorConstants.white,
        title: Image.asset(ImageConstants.facebooklogo),
        actions: [
          CircleAvatar(
            radius: 20,
            backgroundColor: ColorConstants.maingrey,
            child: Icon(Icons.search),
          ),
          SizedBox(
            width: 8,
          ),
          CircleAvatar(
            radius: 20,
            backgroundColor: ColorConstants.maingrey,
            child: Icon(Icons.notifications),
          ),
          SizedBox(
            width: 8,
          ),
          CircleAvatar(
            radius: 20,
            backgroundColor: ColorConstants.maingrey,
            child: Image.asset(ImageConstants.messenger),
          ),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: ListView(
        // padding: EdgeInsets.only(left: 5, right: 5),
        children: [
          Container(
              decoration: BoxDecoration(
                  color: ColorConstants.white,
                  borderRadius:
                      BorderRadius.vertical(bottom: Radius.circular(20))),
              child: Padding(
                padding: const EdgeInsets.only(
                    bottom: 24, left: 12, right: 12, top: 10),
                child: Column(children: [
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ProfileScreen()));
                        },
                        child: CircleAvatar(
                            radius: 20,
                            backgroundImage:
                                NetworkImage(ImageConstants.profile1)),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30)),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30)),
                            contentPadding: EdgeInsets.all(10),
                            hintText: "  Write somthing here...",
                            hintStyle: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: ColorConstants.black),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: ColorConstants.maingrey,
                            borderRadius: BorderRadius.circular(15)),
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                        child: Row(
                          children: [
                            Icon(
                              Icons.camera_alt,
                              color: Colors.green,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text("Photo/video")
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: ColorConstants.maingrey,
                            borderRadius: BorderRadius.circular(15)),
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                        child: Row(
                          children: [
                            Icon(
                              Icons.video_call,
                              color: Colors.red,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text("Live video")
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: ColorConstants.maingrey,
                            borderRadius: BorderRadius.circular(15)),
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                        child: Row(
                          children: [
                            Icon(
                              Icons.visibility,
                              color: Colors.blue,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text("Check in")
                          ],
                        ),
                      )
                    ],
                  )
                ]),
              )),
          SizedBox(
            height: 20,
          ),
          Column(
            children: [
              SizedBox(
                height: 120,
                child: ListView.separated(
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  itemCount: 11,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemBuilder: (context, index) => InkWell(
                    onTap: () {
                      if (index == 0) {}
                    },
                    child: HomeScreenCard(
                      imagepath: DummyDb.storylist[index]["imagepath"],
                      name: DummyDb.storylist[index]["name"],
                      showaddicon: (index == 0) == true,
                    ),
                  ),
                  separatorBuilder: (context, index) => SizedBox(
                    width: 14,
                  ),
                ),
              )
            ],
          ),
          Divider(
            thickness: 5,
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                Row(
                  children: [
                    Row(
                      children: [
                        Icon(FontAwesome.instagram_brand),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Reels",
                          style: TextStyle(
                              color: ColorConstants.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 18),
                        )
                      ],
                    ),
                    Spacer(),
                    Icon(Icons.more_horiz)
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 250,
            child: ListView.separated(
              padding: EdgeInsets.symmetric(horizontal: 10),
              itemCount: 10,
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemBuilder: (context, index) => InkWell(
                  onTap: () {
                    if (index == 0) {}
                  },
                  child: ReelsCard(
                    image: DummyDb.reelscoverimage[index],
                  )),
              separatorBuilder: (context, index) => SizedBox(
                width: 10,
              ),
            ),
          ),
          Divider(
            thickness: 5,
          ),
          ListView.separated(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 5,
              separatorBuilder: (context, index) => SizedBox(
                    height: 5,
                  ),
              itemBuilder: (context, index) => PostCard(
                    description: DummyDb.postlist[index]["description"],
                    post: DummyDb.postlist[index]["post"],
                    image: DummyDb.postlist[index]["image"],
                    name: DummyDb.postlist[index]["name"],
                    time: DummyDb.postlist[index]["time"],
                    like: DummyDb.postlist[index]["like"],
                    commentcount: DummyDb.postlist[index]["commentcount"],
                  )),
        ],
      ),
    );
  }
}

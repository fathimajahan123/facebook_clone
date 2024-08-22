// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:facebook_clone/utils/color_constants.dart';
import 'package:facebook_clone/utils/image_constants.dart';
import 'package:facebook_clone/view/create_profile/create_profie.dart';
import 'package:facebook_clone/view/dummy_db.dart';
import 'package:facebook_clone/view/home_screen/home_screen.dart';
import 'package:facebook_clone/view/profile_screen/widgets/post_photo_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool showpost = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.white,
      appBar: AppBar(
        // leading: Icon(Icons.arrow_back),
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Johns"),
            InkWell(
              onTap: () {
                showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                      return SizedBox(
                        height: 200,
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 15),
                            child: Column(
                              children: [
                                Text(
                                  "Your Profiles & pages",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                                Divider(),
                                SizedBox(
                                  height: 10,
                                ),
                                InkWell(
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                  child: Row(
                                    children: [
                                      CircleAvatar(
                                        backgroundImage: NetworkImage(
                                            ImageConstants.profile1),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "Johns",
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Spacer(),
                                      CircleAvatar(
                                        radius: 8,
                                        backgroundColor: ColorConstants.blue,
                                        child: CircleAvatar(
                                          radius: 7,
                                          backgroundColor: ColorConstants.white,
                                          child: CircleAvatar(
                                              radius: 6,
                                              backgroundColor:
                                                  ColorConstants.blue),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                CreateProfie()));
                                  },
                                  child: Row(
                                    children: [
                                      CircleAvatar(
                                        backgroundColor:
                                            ColorConstants.maingrey,
                                        child: Icon(Icons.add),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "Create new profile or page",
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    });
              },
              child: Icon(
                Icons.arrow_drop_down,
                size: 35,
              ),
            )
          ],
        ),
        actions: [
          Icon(Icons.search),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: ListView(children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildprofilepicturesection(),
            SizedBox(
              height: 25,
            ),
            _buildAddstorysection(),
            Divider(
              thickness: 5,
            ),
            _buildPostPhotoVIdeosection(),
            Divider(
              thickness: .5,
            ),
            _buildDetailsSection(),
            Divider(
              thickness: 5,
            ),
            Column(
              children: List.generate(
                  5,
                  (index) => PostPhotoCard(
                        like: DummyDb.profilepostlist[index]["like"],
                        description: DummyDb.profilepostlist[index]
                            ["description"],
                        post: DummyDb.profilepostlist[index]["post"],
                        image: DummyDb.profilepostlist[index]["image"],
                        time: DummyDb.profilepostlist[index]["time"],
                        commentcount: DummyDb.profilepostlist[index]
                            ["commentcount"],
                      )),
            )
          ],
        ),
      ]),
    );
  }

  Padding _buildDetailsSection() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Details",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            children: [
              FaIcon(
                FontAwesomeIcons.graduationCap,
                color: ColorConstants.darkgrey,
                size: 20,
              ),
              SizedBox(
                width: 5,
              ),
              Text("went to"),
              SizedBox(
                width: 5,
              ),
              Text(
                "ABC School",
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Center(
            child: InkWell(
              onTap: () {},
              child: Container(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.blue.withOpacity(.2),
                      borderRadius: BorderRadius.circular(10)),
                  child: Text(
                    "Edit public details",
                    style: TextStyle(
                        color: ColorConstants.deepblue,
                        fontWeight: FontWeight.w500),
                  )),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            children: [
              Text(
                "Friends",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              Spacer(),
              InkWell(
                onTap: () {},
                child: Text(
                  "Find Friends",
                  style:
                      TextStyle(color: ColorConstants.deepblue, fontSize: 16),
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  Padding _buildPostPhotoVIdeosection() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              InkWell(
                onTap: () {
                  setState(() {});
                },
                child: Container(
                  decoration: BoxDecoration(
                    // color: Colors.amber,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                    child: Text(
                      "Posts",
                      style: TextStyle(
                          color: ColorConstants.darkgrey, fontSize: 18),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              InkWell(
                onTap: () {
                  setState(() {});
                },
                child: Container(
                  decoration: BoxDecoration(
                    //color: Colors.amber,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                    child: Text(
                      "Photos",
                      style: TextStyle(
                          color: ColorConstants.darkgrey, fontSize: 18),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              InkWell(
                onTap: () {
                  setState(() {});
                },
                child: Container(
                  decoration: BoxDecoration(
                    // color: Colors.amber,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                    child: Text(
                      "Videos",
                      style: TextStyle(
                          color: ColorConstants.darkgrey, fontSize: 18),
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  Row _buildAddstorysection() {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Johns",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                    decoration: BoxDecoration(
                        color: ColorConstants.blue,
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      children: [
                        Icon(
                          Icons.add,
                          color: ColorConstants.white,
                        ),
                        Text(
                          "Add to story",
                          style: TextStyle(color: ColorConstants.white),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                    decoration: BoxDecoration(
                        color: ColorConstants.maingrey,
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      children: [
                        Icon(Icons.edit),
                        Text(
                          "Edit profile",
                          style: TextStyle(color: ColorConstants.black),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                    decoration: BoxDecoration(
                        color: ColorConstants.maingrey,
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      children: [
                        Icon(Icons.more_horiz),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ],
    );
  }

  Stack _buildprofilepicturesection() {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Stack(children: [
          Container(
            height: 200,
            decoration: BoxDecoration(
                color: Colors.amber,
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      "https://images.pexels.com/photos/1211607/pexels-photo-1211607.jpeg?auto=compress&cs=tinysrgb&w=600",
                    ))),
          ),
          Positioned(
              left: 350,
              top: 150,
              child: CircleAvatar(
                radius: 21,
                backgroundColor: ColorConstants.white,
                child: CircleAvatar(
                  radius: 20,
                  backgroundColor: ColorConstants.maingrey,
                  child: Icon(Icons.camera_alt),
                ),
              ))
        ]),
        Positioned(
          bottom: -30,
          left: 8,
          child: Column(
            children: [
              CircleAvatar(
                radius: 60,
                backgroundColor: ColorConstants.white,
                child: Stack(clipBehavior: Clip.none, children: [
                  CircleAvatar(
                    radius: 58,
                    backgroundImage: NetworkImage(ImageConstants.profile1),
                  ),
                  Positioned(
                      left: 85,
                      top: 85,
                      child: CircleAvatar(
                        radius: 13,
                        backgroundColor: ColorConstants.white,
                        child: CircleAvatar(
                          radius: 12,
                          backgroundColor: ColorConstants.maingrey,
                          child: Icon(
                            Icons.camera_alt,
                            size: 15,
                          ),
                        ),
                      ))
                ]),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

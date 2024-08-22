// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:facebook_clone/utils/color_constants.dart';
import 'package:facebook_clone/utils/image_constants.dart';
import 'package:facebook_clone/view/create_profile/create_profie.dart';
import 'package:facebook_clone/view/dummy_db.dart';
import 'package:facebook_clone/view/menu_page/widget/menu_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.white,
      appBar: AppBar(
        backgroundColor: ColorConstants.white,
        title: Text(
          "Menu",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        actions: [
          Icon(Icons.settings),
          SizedBox(
            width: 10,
          ),
          Icon(Icons.search),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey,
                          blurRadius: 5,
                          blurStyle: BlurStyle.outer)
                    ],
                    color: ColorConstants.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 20,
                            backgroundImage:
                                NetworkImage(ImageConstants.profile1),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Johns",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Spacer(),
                          CircleAvatar(
                            backgroundColor: ColorConstants.maingrey,
                            radius: 18,
                            child: Icon(Icons.arrow_drop_down),
                          )
                        ],
                      ),
                      Divider(
                        color: ColorConstants.lightgrey,
                        thickness: 0.3,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => CreateProfie()));
                        },
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 16,
                              child: Icon(
                                Icons.add,
                                color: ColorConstants.white,
                              ),
                              backgroundColor: ColorConstants.darkgrey,
                            ),
                            SizedBox(
                              width: 12,
                            ),
                            Text("Create new profile or page")
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 8,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      childAspectRatio: 2.5),
                  itemBuilder: (context, index) => MenuCard(
                        icon: DummyDb.menudata[index]["icon"],
                        text: DummyDb.menudata[index]["text"],
                      )),
              SizedBox(
                height: 10,
              ),
              Divider(),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  FaIcon(
                    FontAwesomeIcons.solidCircleQuestion,
                    color: ColorConstants.grey,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text("data"),
                  Spacer(),
                  Icon(Icons.arrow_drop_down)
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Divider(),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  FaIcon(FontAwesomeIcons.gear, color: ColorConstants.grey),
                  SizedBox(
                    width: 10,
                  ),
                  Text("data"),
                  Spacer(),
                  Icon(Icons.arrow_drop_down)
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Divider(),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  FaIcon(FontAwesomeIcons.grip, color: ColorConstants.grey),
                  SizedBox(
                    width: 10,
                  ),
                  Text("data"),
                  Spacer(),
                  Icon(Icons.arrow_drop_down)
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: double.infinity,
                height: 40,
                decoration: BoxDecoration(
                    color: ColorConstants.maingrey,
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child: Text(
                    "Log out",
                    textAlign: TextAlign.center,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

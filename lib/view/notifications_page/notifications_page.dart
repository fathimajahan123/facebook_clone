// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:math';

import 'package:facebook_clone/utils/color_constants.dart';
import 'package:facebook_clone/view/dummy_db.dart';
import 'package:facebook_clone/view/notifications_page/widget/notification_card.dart';
import 'package:flutter/material.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.white,
      appBar: AppBar(
        backgroundColor: ColorConstants.white,
        title: Text(
          "Notifications",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [Icon(Icons.search)],
      ),
      body: ListView(children: [
        Column(
          children: List.generate(
              10,
              (index) => NotificationCard(
                    name: DummyDb.notification[index]["name"],
                    count: DummyDb.notification[index]["count"],
                    image: DummyDb.notification[index]["image"],
                  )),
        ),
      ]),
    );
  }
}

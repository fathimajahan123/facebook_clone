// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:facebook_clone/utils/color_constants.dart';
import 'package:facebook_clone/utils/image_constants.dart';
import 'package:facebook_clone/view/dummy_db.dart';
import 'package:facebook_clone/view/video_screen/widget/video_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class VideoScreen extends StatefulWidget {
  const VideoScreen({super.key});

  @override
  State<VideoScreen> createState() => _VideoScreenState();
}

class _VideoScreenState extends State<VideoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Video"),
          actions: [Icon(Icons.search)],
        ),
        body: ListView.separated(
            itemBuilder: (context, index) => VideoCard(
                  post: DummyDb.postlist[index]["post"],
                  description: DummyDb.postlist[index]["description"],
                  image: DummyDb.postlist[index]["image"],
                  like: DummyDb.postlist[index]["like"],
                  commentcount: DummyDb.postlist[index]["commentcount"],
                  time: DummyDb.postlist[index]["time"],
                  name: DummyDb.postlist[index]["name"],
                ),
            separatorBuilder: (context, index) => SizedBox(
                  height: 10,
                ),
            itemCount: 5));
  }
}

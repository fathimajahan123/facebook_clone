// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:facebook_clone/utils/color_constants.dart';
import 'package:facebook_clone/utils/image_constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PostCard extends StatelessWidget {
  const PostCard(
      {super.key,
      required this.description,
      required this.post,
      required this.image,
      required this.name,
      required this.time,
      required this.commentcount,
      required this.like});
  final String description;
  final String post;
  final String image;
  final String name;
  final String commentcount;
  final String time;
  final String like;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorConstants.white,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundImage: NetworkImage(image),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          name,
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Image.asset(ImageConstants.verifylogo)
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.public,
                          size: 15,
                          color: ColorConstants.grey,
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Text(
                          time,
                          style: TextStyle(color: ColorConstants.grey),
                        ),
                      ],
                    )
                  ],
                ),
                Spacer(),
                Column(
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.more_vert,
                          color: ColorConstants.grey,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Icon(Icons.close, color: ColorConstants.grey)
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: SizedBox(
              height: 50,
              child: Text(
                description,
                textAlign: TextAlign.start,
                maxLines: 2,
              ),
            ),
          ),
          Image.network(post),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 18),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              Row(
                                children: [
                                  Image.asset(ImageConstants.emoji),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    like,
                                    style: TextStyle(
                                        color: ColorConstants.darkgrey,
                                        fontSize: 12),
                                  )
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                      Spacer(),
                      Column(
                        children: [
                          Text(
                            commentcount,
                            style: TextStyle(
                                color: ColorConstants.grey, fontSize: 10),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.thumb_up_alt_outlined,
                            color: ColorConstants.darkgrey,
                            size: 20,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "Like",
                            style: TextStyle(color: ColorConstants.darkgrey),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          FaIcon(
                            FontAwesomeIcons.comment,
                            color: ColorConstants.darkgrey,
                            size: 20,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "Comment",
                            style: TextStyle(color: ColorConstants.darkgrey),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          FaIcon(
                            FontAwesomeIcons.whatsapp,
                            color: ColorConstants.darkgrey,
                            size: 20,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "Send",
                            style: TextStyle(color: ColorConstants.darkgrey),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          FaIcon(
                            FontAwesomeIcons.share,
                            color: ColorConstants.darkgrey,
                            size: 20,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "Share",
                            style: TextStyle(color: ColorConstants.darkgrey),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

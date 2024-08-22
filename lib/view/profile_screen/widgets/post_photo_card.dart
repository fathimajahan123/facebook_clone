// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:facebook_clone/utils/color_constants.dart';
import 'package:facebook_clone/utils/image_constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PostPhotoCard extends StatelessWidget {
  const PostPhotoCard(
      {super.key,
      required this.description,
      required this.post,
      required this.image,
      required this.time,
      required this.commentcount,
      required this.like});

  final String description;
  final String post;
  final String image;
  final String commentcount;
  final String time;
  final String like;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorConstants.white,
      child: Column(
        // children: [
        //   Padding(
        //     padding: const EdgeInsets.symmetric(horizontal: 10),
        //     child: Row(
        //       children: [
        //         CircleAvatar(
        //           radius: 20,
        //           backgroundImage: NetworkImage(ImageConstants.profile1),
        //         ),
        //         SizedBox(
        //           width: 10,
        //         ),
        //         Column(
        //           crossAxisAlignment: CrossAxisAlignment.start,
        //           children: [
        //             Text(
        //               "Johns",
        //               style: TextStyle(fontWeight: FontWeight.bold),
        //             ),
        //             Row(
        //               children: [
        //                 Text(
        //                   time,
        //                   style: TextStyle(color: ColorConstants.darkgrey),
        //                 ),
        //                 SizedBox(
        //                   width: 10,
        //                 ),
        //                 Icon(
        //                   Icons.people,
        //                   color: ColorConstants.darkgrey,
        //                   size: 15,
        //                 )
        //               ],
        //             ),
        //           ],
        //         ),
        //         Spacer(),
        //         Column(
        //           children: [Icon(Icons.more_horiz)],
        //         ),
        //       ],
        //     ),
        //   ),
        //   SizedBox(
        //     height: 10,
        //   ),
        //   Padding(
        //     padding: const EdgeInsets.symmetric(horizontal: 10),
        //     child: Row(
        //       mainAxisAlignment: MainAxisAlignment.start,
        //       children: [
        //         SizedBox(
        //           child: Text(
        //             textAlign: TextAlign.start,
        //             maxLines: 2,
        //             description,
        //           ),
        //         ),
        //       ],
        //     ),
        //   ),
        //   SizedBox(
        //     height: 10,
        //   ),
        //   Image.network(post),
        //   Padding(
        //     padding: const EdgeInsets.symmetric(vertical: 18),
        //     child: Column(
        //       children: [
        //         Row(
        //           children: [
        //             Column(
        //               children: [
        //                 Row(
        //                   children: [
        //                     Row(
        //                       children: [
        //                         Image.asset(ImageConstants.emoji),
        //                         SizedBox(
        //                           width: 5,
        //                         ),
        //                         Text(
        //                           like,
        //                           style: TextStyle(
        //                               color: ColorConstants.darkgrey,
        //                               fontSize: 12),
        //                         )
        //                       ],
        //                     )
        //                   ],
        //                 ),
        //               ],
        //             ),
        //             Spacer(),
        //             Column(
        //               children: [
        //                 Text(
        //                   commentcount,
        //                   style: TextStyle(
        //                       color: ColorConstants.grey, fontSize: 10),
        //                 )
        //               ],
        //             )
        //           ],
        //         ),
        //         SizedBox(
        //           height: 10,
        //         ),
        //         Padding(
        //           padding: const EdgeInsets.symmetric(horizontal: 10),
        //           child: Row(
        //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //             children: [
        //               Row(
        //                 children: [
        //                   Icon(
        //                     Icons.thumb_up_alt_outlined,
        //                     color: ColorConstants.darkgrey,
        //                     size: 20,
        //                   ),
        //                   SizedBox(
        //                     width: 5,
        //                   ),
        //                   Text(
        //                     "Like",
        //                     style: TextStyle(color: ColorConstants.darkgrey),
        //                   )
        //                 ],
        //               ),
        //               Row(
        //                 children: [
        //                   FaIcon(
        //                     FontAwesomeIcons.comment,
        //                     color: ColorConstants.darkgrey,
        //                     size: 20,
        //                   ),
        //                   SizedBox(
        //                     width: 5,
        //                   ),
        //                   Text(
        //                     "Comment",
        //                     style: TextStyle(color: ColorConstants.darkgrey),
        //                   )
        //                 ],
        //               ),
        //               Row(
        //                 children: [
        //                   FaIcon(
        //                     FontAwesomeIcons.whatsapp,
        //                     color: ColorConstants.darkgrey,
        //                     size: 20,
        //                   ),
        //                   SizedBox(
        //                     width: 5,
        //                   ),
        //                   Text(
        //                     "Send",
        //                     style: TextStyle(color: ColorConstants.darkgrey),
        //                   )
        //                 ],
        //               ),
        //               Row(
        //                 children: [
        //                   FaIcon(
        //                     FontAwesomeIcons.share,
        //                     color: ColorConstants.darkgrey,
        //                     size: 20,
        //                   ),
        //                   SizedBox(
        //                     width: 5,
        //                   ),
        //                   Text(
        //                     "Share",
        //                     style: TextStyle(color: ColorConstants.darkgrey),
        //                   )
        //                 ],
        //               )
        //             ],
        //           ),
        //         )
        //       ],
        //     ),
        //   )
        // ],
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundImage: NetworkImage(ImageConstants.profile1),
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
                          "Johns",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          time,
                          style: TextStyle(color: ColorConstants.grey),
                        ),
                      ],
                    )
                  ],
                ),
                Spacer(),
                Icon(Icons.more_horiz)
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
          Image.network(
            post,
            width: double.infinity,
          ),
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
                  padding: const EdgeInsets.symmetric(horizontal: 10),
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
          ),
          Divider(
            thickness: 5,
          )
        ],
      ),
    );
  }
}

// ignore_for_file: prefer_const_constructors

import 'package:facebook_clone/utils/color_constants.dart';
import 'package:flutter/material.dart';

class Suggestionpage extends StatelessWidget {
  const Suggestionpage({
    super.key,
    // required this.image,
    // required this.name,
  });
  // final String image;
  // final String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Suggestions",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [Icon(Icons.search)],
      ),
      backgroundColor: ColorConstants.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          children: [
            Expanded(
              child: ListView.separated(
                  itemBuilder: (context, index) => Row(
                        children: [
                          CircleAvatar(
                            backgroundImage: NetworkImage("image"),
                            radius: 50,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "name",
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          color: ColorConstants.blue),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 10, horizontal: 30),
                                        child: Text(
                                          "Add friend",
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: ColorConstants.white),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          color: ColorConstants.maingrey),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 10, horizontal: 30),
                                        child: Text(
                                          "Remove",
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: ColorConstants.black),
                                        ),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                  separatorBuilder: (context, index) => SizedBox(
                        height: 10,
                      ),
                  itemCount: 10),
            ),
          ],
        ),
      ),
    );
  }
}

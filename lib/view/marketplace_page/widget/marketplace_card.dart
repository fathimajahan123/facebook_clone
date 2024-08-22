// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class MarketplaceCard extends StatelessWidget {
  const MarketplaceCard(
      {super.key,
      required this.imageurl,
      required this.rate,
      required this.itemname});
  final String imageurl;
  final String rate;
  final String itemname;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 150,
          width: 200,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover, image: NetworkImage(imageurl))),
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Text(rate),
            SizedBox(
              width: 5,
            ),
            Text(itemname)
          ],
        )
      ],
    );
  }
}

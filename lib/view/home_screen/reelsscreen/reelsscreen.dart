// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Reelsscreen extends StatelessWidget {
  const Reelsscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("reels"),
        actions: [Icon(Icons.camera), Icon(Icons.search), Icon(Icons.person)],
      ),
    );
  }
}

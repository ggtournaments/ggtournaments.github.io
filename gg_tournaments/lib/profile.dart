import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'widgets.dart' as w;
/*
* This page is the profile page for the user
* -display account information, personalized feed of games followed
* -RS and JR 1/18/2020
 */

class ProfilePage extends StatelessWidget {
  Widget textWidget(String text) {
    return Text(text);
  }
  List<Widget> widgetList = [
    w.scrollBox("box A"),
    w.scrollBox("box B"),
    w.scrollBox("box C"),
    w.scrollBox("box D"),
    w.scrollBox("box E"),
    w.scrollBox("box F"),
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Color(0xFF3d3d3d),
      appBar: AppBar(),
      body: Center(
        // Work from here
        child: Column(
          children: <Widget>[
            w.rowWidget("Profile Page", "user"),
            w.rowWidget("Tournament", "start time"),
            w.scrollsArray(widgetList),
            w.scrollsArray(widgetList),
          ],
        )
      )
    );
  }
}
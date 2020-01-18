import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  Widget textWidget(String text) {
    return Text(text);
  }

  Widget rowWidget(String text1, String text2) {
    return Row(
      children: <Widget>[
        Text(text1),
        Text(text2),
      ],
    );
  }
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        // Work from here
        child: Column(
          children: <Widget>[
            rowWidget("1", "4")
          ],
        )
      )
    );
  }
}
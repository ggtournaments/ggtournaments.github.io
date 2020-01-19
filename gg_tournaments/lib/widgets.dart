import 'package:flutter/material.dart';


Widget rowWidget(String text1, String text2) {
  return Row(
    children: <Widget>[
      Text(text1),
      Text(text2),
    ],
  );
}

Widget scrollBox(String text1){
  return Container(
    width: 100,
    decoration: new BoxDecoration(
      border: Border.all(width: 2.0, color: const Color(0xFFA88A3D)),
      color: Color(0xFF3d3d3d),
    ),


    margin: new EdgeInsets.symmetric(horizontal: 10, vertical: 10,),
    child: Row(
      children: <Widget>[
        Text(text1),
      ],
    ),
  );
}

// Arguments:
// int - height
// List<Widget> - widgets
Widget scrollsArray(List<Widget> widgetList){
  return Container(
    height: 200,
    child:ListView(
      scrollDirection: Axis.horizontal,
      children: widgetList
    ),
  );
}
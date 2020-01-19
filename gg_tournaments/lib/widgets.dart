import 'package:flutter/material.dart';

Widget rowText(String text1){
  return Padding(
    padding: const EdgeInsets.all(5),
    child: Text(text1),
  );
}

Widget rowWidget(){
  return Row(
    children: <Widget>[
      //Text(text1),
      //Text(text2),
      //Padding(
        //padding: const EdgeInsets.all(5),
        //child: Container(
      Container(
        width: 390,
        height: 5,
        margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
        //margin: EdgeInsets.all(20),
        color: Color(0xFFA88A3D),
      ),
      //),
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
    child: Column(
      children: <Widget>[
        Text(text1),
        //Text(text1),
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

Widget profileTop(String imageURI, String username, String game, int wins){
  return Container(
    color: Color(0xFFA88A3D),
    width: 600,
    height: 200,
    //width: 200,
    //height: 50,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        //put 'cover photo' and plus sign logo here
        Padding(
          padding: const EdgeInsets.all(10),
          child: Image.asset(
              imageURI
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(username),
              Text("game: " + game),
              Text("Wins: " + wins.toString()),
            ],
          )
        ),

      ],
    ),


  );
}


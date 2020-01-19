import 'package:flutter/material.dart';

class EventInfo extends StatefulWidget {
  static String tag = 'eventInfo';
  @override
  _EventInfoState createState() => _EventInfoState();
}

//Globals //////////////////////////////////////////////////////////////////////
  String info;
  String game;
  String organizer;
  String platform;
  String type;
  List<String> location = ["", "", "", "", ""];
////////////////////////////////////////////////////////////////////////////////

BoxDecoration myBoxDecoration() {
  return BoxDecoration(
    border: Border.all(
        width: 5.0,
      color: Colors.grey,
    ),
    borderRadius: BorderRadius.all(
        Radius.circular(5.0)
    ),
    color: Colors.white,
  );
}

class _EventInfoState extends State<EventInfo> {
  @override

  Widget build(BuildContext context) {
    //Starts the display to the screen
    return Scaffold(
      backgroundColor: const Color(0xFF3D3D3D),
      appBar: AppBar(
          centerTitle: true,
          backgroundColor: const Color(0xFF3D3D3D),
          title: const Text(
            'Basic Info',
          ),

          //Allows for the page to have a "go back" button
          automaticallyImplyLeading: true,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () => Navigator.pop(context, false),
          )),

      //Creates the grid of buttons
      body: Center(
        heightFactor: 10,
        child: ListView(
          primary: false,
          padding: const EdgeInsets.all(20),
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(8),
              child: Text('Event Information',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                  )),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: TextField(
                onChanged: (text) {
                   info = text;
                },
                keyboardType: TextInputType.multiline,
                maxLines: null,
                decoration: InputDecoration(
                 focusedBorder: OutlineInputBorder(
                    borderSide:BorderSide(color: Colors.greenAccent, width: 5.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 5.0),
                  ),
                  labelText: 'Event Title:',
                  hintText: 'Be Clear and Descriptive',
                  fillColor: Colors.white,
                  filled: true,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: Text('Game',
              style: TextStyle(
                fontSize: 15,
                color: Colors.white,
              )),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              decoration: myBoxDecoration(),
              child: DropdownButton<String>(
                hint: Text('Game', textAlign: TextAlign.center),
                value: game,
                onChanged: (String newValue) {
                  setState(() {
                    game= newValue;
                  });
                },
                items: <String>['Super Smash Brothers', 'League of Legends', 'PUBG', 'Overwatch', 'Vain Glory', 'CS:GO'].map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              )
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: Text('Organizer',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                  )),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: TextField(
                onChanged: (text) {
                  organizer = text;
                },
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide:BorderSide(color: Colors.greenAccent, width: 5.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 5.0),
                  ),
                  labelText: 'Organizer Name:',
                  hintText: 'Type the name of the organizer here',
                  fillColor: Colors.white,
                  filled: true,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: Text('Platform',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                  )),
            ),
            Container(
                padding: const EdgeInsets.all(8),
                decoration: myBoxDecoration(),
                child: DropdownButton<String>(
                  hint: Text('Platform: ', textAlign: TextAlign.center),
                  value: platform,
                  onChanged: (String newValue) {
                    setState(() {
                      platform= newValue;
                    });
                  },
                  items: <String>['Playstation 4', 'XBOX One', 'PC', 'Nintendo Switch', 'Nintendo Gamecube'].map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                )
            ),
            
          ],
        ),
      ),
    );
  }
}
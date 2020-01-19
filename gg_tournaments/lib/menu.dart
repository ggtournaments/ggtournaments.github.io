/*
* In this folder you can create a new list and at it to the database.
* You can delete a list from the database; it warns you if you want to fully
* delete or cancel.
* You can open a new list.
* You can add an item to a new list. 
* Specifing the item name, price, and quanitity. 
*/

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/material/page.dart';



List<String> numList = new List(); //Array to hold the list names
List<String> userNames = new List();
var darkModeOn;

//FireBase stuff
final databaseRef = Firestore.instance; //creating an instance of database
var documentName = '';
List<DocumentSnapshot> myLists;


//State of MenuPage
class MenuPage extends StatefulWidget {
  static String tag = 'menu-page';

  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  int _selectedIndex = 1;
  //Scaffold is the main container for main page
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _getBody(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue,
        currentIndex: _selectedIndex,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            title: Text('Settings'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            title: Text('Lists'),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.assignment_ind), title: Text('Profile'))
        ],
      ),
    );
  }

  //Menu Page
  Widget _getBody(int index) {
    switch (index) {
      case 1:
        return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.blue,
              centerTitle: true,
              title: const Text('Lists'),
              actions: <Widget>[
                IconButton(
                    icon: Icon(Icons.add),
                    onPressed: () {
                     
                    }),
              ],
              automaticallyImplyLeading: false,
            ),
          );
    }
    return Center(
      child: const Text('No body for selected tab'),
    );
  }
}

import 'package:flutter/material.dart';
import 'events.dart';

class HomePage extends StatefulWidget {
  static String tag = 'menu-page';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin{
  TabController tabController;

  int selectedIndex = 0;

  @override
  void initState() {
    // TODO: implement initState
    tabController = new TabController(length: 3, vsync: this);
    super.initState();
  }

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  Widget getHeader(int index) {
    switch (index){
      case 0:
        return AppBar(
          title: Text('GG Tournaments'),
          bottom: TabBar(
            controller: tabController,
            tabs: <Widget>[
              Tab(child: Text("Game")),
              Tab(child: Text("Genre")),
              Tab(child: Text("Platform"))
            ],
          ),
        );
      case 1:
        return AppBar(
          title: Text('GG Tournaments'),
        );
      default:
        return Container();
    }
  }

  Widget getBody(int index) {
    switch (index){
      case 0:
        return EventsPage(tabController: tabController);
      case 1:
        return Container();
      default:
        return Container();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getHeader(selectedIndex),
      body: Center(
        child: getBody(selectedIndex)
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: onItemTapped,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            title: Text('Events'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assignment_ind),
            title: Text('Profile')
          )
        ],
      ),
    );
  }
}
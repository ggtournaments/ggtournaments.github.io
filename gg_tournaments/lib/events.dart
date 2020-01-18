import 'package:flutter/material.dart';

class EventsPage extends StatefulWidget {
  static String tag = 'menu-page';

  final TabController tabController;

  const EventsPage({Key key, this.tabController}): super(key: key);

  @override
  _EventsPageState createState() => _EventsPageState();
}

class _EventsPageState extends State<EventsPage> {
  @override
  void initState() {
    super.initState();
  }

  List<Widget> cardGenerator(items) {
    List<Widget> cardList =  new List<Widget>();

    for (var item in items) {
      Widget card = new Card(
        child: InkWell(
          onTap: () {},
          child: Container(
            width: 200,
            child: Text(item),
          ),
        ),
        elevation: 5.0,
      );

      cardList.add(card);
    }

    return cardList;
  }

  Widget gameView() {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Divider(height: 10),

          Text("Super Smash Bros: Ultimate"),
          Container(
            height: 150,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: cardGenerator(["hi", "this", "is", "cool"])
            ),
          ),

          Divider(height: 10),

          Text("Fortnite"),
          Container(
            height: 150,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Card(
                  child: InkWell(
                    child: Text("hi this is a long message"),
                    onTap: () {},
                  ),
                  elevation: 5.0,
                ),
                Card(
                  child: InkWell(
                    child: Text("hi this is a long message"),
                    onTap: () {},
                  ),
                  elevation: 5.0,
                ),
                Card(
                  child: InkWell(
                    child: Text("hi this is a long message"),
                    onTap: () {},
                  ),
                  elevation: 5.0,
                ),
                Card(
                  child: InkWell(
                    child: Text("hi this is a long message"),
                    onTap: () {},
                  ),
                  elevation: 5.0,
                )
              ],
            ),
          ),

          Divider(height: 10),

          Text("Dota 2"),
          Container(
            height: 150,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Card(
                  child: InkWell(
                    child: Text("hi this is a long message"),
                    onTap: () {},
                  ),
                  elevation: 5.0,
                ),
                Card(
                  child: InkWell(
                    child: Text("hi this is a long message"),
                    onTap: () {},
                  ),
                  elevation: 5.0,
                ),
                Card(
                  child: InkWell(
                    child: Text("hi this is a long message"),
                    onTap: () {},
                  ),
                  elevation: 5.0,
                ),
                Card(
                  child: InkWell(
                    child: Text("hi this is a long message"),
                    onTap: () {},
                  ),
                  elevation: 5.0,
                )
              ],
            ),
          ),

          Divider(height: 10),

          Text("Counter Strike: Global Offensive"),
          Container(
            height: 150,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Card(
                  child: InkWell(
                    child: Text("hi this is a long message"),
                    onTap: () {},
                  ),
                  elevation: 5.0,
                ),
                Card(
                  child: InkWell(
                    child: Text("hi this is a long message"),
                    onTap: () {},
                  ),
                  elevation: 5.0,
                ),
                Card(
                  child: InkWell(
                    child: Text("hi this is a long message"),
                    onTap: () {},
                  ),
                  elevation: 5.0,
                ),
                Card(
                  child: InkWell(
                    child: Text("hi this is a long message"),
                    onTap: () {},
                  ),
                  elevation: 5.0,
                )
              ],
            ),
          ),

          Divider(height: 10),

          Text("Hearthstone"),
          Container(
            height: 150,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Card(
                  child: InkWell(
                    child: Text("hi this is a long message"),
                    onTap: () {},
                  ),
                  elevation: 5.0,
                ),
                Card(
                  child: InkWell(
                    child: Text("hi this is a long message"),
                    onTap: () {},
                  ),
                  elevation: 5.0,
                ),
                Card(
                  child: InkWell(
                    child: Text("hi this is a long message"),
                    onTap: () {},
                  ),
                  elevation: 5.0,
                ),
                Card(
                  child: InkWell(
                    child: Text("hi this is a long message"),
                    onTap: () {},
                  ),
                  elevation: 5.0,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return TabBarView(
      children: [
        gameView(),
        new Text("This is chat Tab View"),
        new Text("This is notification Tab View"),
      ],
      controller: widget.tabController
    );
  }
}
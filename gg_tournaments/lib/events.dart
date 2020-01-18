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
      Widget card = new Container(
        padding: EdgeInsets.only(
          left: 10.0,
          right: 10.0
        ),
        width: 210,
        child: Card(
          child: InkWell(
            onTap: () {},
            child: Text(item),
          ),
          elevation: 5.0,
        ),
      );

      cardList.add(card);
    }

    return cardList;
  }

  Widget gameView() {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Divider(height: 20),

          Text("Super Smash Bros: Ultimate"),
          Divider(height: 5),
          Container(
            width: MediaQuery.of(context).size.width - 10,
            height: 5,
            decoration: BoxDecoration(
              color: Colors.black,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.all(Radius.circular(8.0))
            )
          ),
          Divider(height: 5),
          Container(
            height: 120,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: cardGenerator(["hi", "this", "is", "cool"])
            ),
          ),

          Divider(height: 10),

          Text("Fortnite"),
          Divider(height: 5),
          Container(
              width: MediaQuery.of(context).size.width - 10,
              height: 5,
              decoration: BoxDecoration(
                  color: Colors.black,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.all(Radius.circular(8.0))
              )
          ),
          Divider(height: 5),
          Container(
            height: 120,
            child: ListView(
                scrollDirection: Axis.horizontal,
                children: cardGenerator(["hi", "this", "is", "cool"])
            ),
          ),

          Divider(height: 10),

          Text("Dota 2"),
          Divider(height: 5),
          Container(
              width: MediaQuery.of(context).size.width - 10,
              height: 5,
              decoration: BoxDecoration(
                  color: Colors.black,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.all(Radius.circular(8.0))
              )
          ),
          Divider(height: 5),
          Container(
            height: 120,
            child: ListView(
                scrollDirection: Axis.horizontal,
                children: cardGenerator(["hi", "this", "is", "cool"])
            ),
          ),

          Divider(height: 10),

          Text("Counter Strike: Global Offensive"),
          Divider(height: 5),
          Container(
              width: MediaQuery.of(context).size.width - 10,
              height: 5,
              decoration: BoxDecoration(
                  color: Colors.black,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.all(Radius.circular(8.0))
              )
          ),
          Divider(height: 5),
          Container(
            height: 120,
            child: ListView(
                scrollDirection: Axis.horizontal,
                children: cardGenerator(["hi", "this", "is", "cool"])
            ),
          ),

          Divider(height: 10),

          Text("Hearthstone"),
          Divider(height: 5),
          Container(
              width: MediaQuery.of(context).size.width - 10,
              height: 5,
              decoration: BoxDecoration(
                  color: Colors.black,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.all(Radius.circular(8.0))
              )
          ),
          Divider(height: 5),
          Container(
            height: 120,
            child: ListView(
                scrollDirection: Axis.horizontal,
                children: cardGenerator(["hi", "this", "is", "cool"])
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
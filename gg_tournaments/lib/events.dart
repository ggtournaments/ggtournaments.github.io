import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

final Firestore _firestore = Firestore.instance;

class Event {
  String name;
  String description;
  String location;
  DateTime dateTime;

  Event(this.name, this.description, this.location, this.dateTime);
}

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

  Widget eventCardGenerator(String game) {
    return StreamBuilder(
      stream: _firestore.collection("events").document("games").collection(game).snapshots(),
      builder: (context, snapshot) {
        List<Widget> cardList =  new List<Widget>();

        if (!snapshot.hasData)
          return Container();

        List<DocumentSnapshot> docs = snapshot.data.documents;

        for (int i = 0; i < 6; i++) {
          if (i == docs.length)
            break;

          print(docs[i].data.toString());

          Widget card = new Container(
            padding: EdgeInsets.only(
              left: 10.0,
              right: 10.0
            ),
            width: 210,
            child: Card(
              child: InkWell(
                onTap: () {},
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("pics/Snowboard-Wallpaper-Fa.jpg")
                    )
                  ),
                  child: Wrap(
                    alignment: WrapAlignment.start,
                    runAlignment: WrapAlignment.end,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            docs[i].data['platform'] ?? "N/A",
                            style: TextStyle(
                              color: Colors.white,
                              shadows: [
                                Shadow( // bottomLeft
                                    offset: Offset(-1.5, -1.5),
                                    color: Colors.black
                                ),
                                Shadow( // bottomRight
                                    offset: Offset(1.5, -1.5),
                                    color: Colors.black
                                ),
                                Shadow( // topRight
                                    offset: Offset(1.5, 1.5),
                                    color: Colors.black
                                ),
                                Shadow( // topLeft
                                    offset: Offset(-1.5, 1.5),
                                    color: Colors.black
                                ),
                              ],
                            ),
                          ),
                          Text(
                            docs[i].data['type'] ?? "N/A",
                            style: TextStyle(
                              color: Colors.white,
                              shadows: [
                                Shadow( // bottomLeft
                                    offset: Offset(-1.5, -1.5),
                                    color: Colors.black
                                ),
                                Shadow( // bottomRight
                                    offset: Offset(1.5, -1.5),
                                    color: Colors.black
                                ),
                                Shadow( // topRight
                                    offset: Offset(1.5, 1.5),
                                    color: Colors.black
                                ),
                                Shadow( // topLeft
                                    offset: Offset(-1.5, 1.5),
                                    color: Colors.black
                                ),
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ),
              elevation: 5.0,
            ),
          );

          cardList.add(card);
        }

        return Container(
          height: 120,
          child: ListView(
              scrollDirection: Axis.horizontal,
              children: cardList
          ),
        );
      },
    );
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
          eventCardGenerator("Super Smash Bros: Ultimate"),

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
          eventCardGenerator("Fortnite"),

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
          eventCardGenerator("Dota 2"),

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
          eventCardGenerator("Counter Strike: Global Offensive"),

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
          eventCardGenerator("Hearthstone"),
        ],
      ),
    );
  }

  Widget genreView() {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Divider(height: 20),

          Text("Fighting"),
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
          eventCardGenerator("Super Smash Bros: Ultimate"),

          Divider(height: 10),

          Text("FPS"),
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
          eventCardGenerator("Super Smash Bros: Ultimate"),

          Divider(height: 10),

          Text("Strategy"),
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
          eventCardGenerator("Super Smash Bros: Ultimate"),

          Divider(height: 10),

          Text("MOBA"),
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
          eventCardGenerator("Super Smash Bros: Ultimate"),

          Divider(height: 10),

          Text("Battle Royale"),
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
          eventCardGenerator("Super Smash Bros: Ultimate"),
        ],
      ),
    );
  }

  Widget platformView() {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Divider(height: 20),

          Text("PC"),
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
          eventCardGenerator("Super Smash Bros: Ultimate"),

          Divider(height: 10),

          Text("Xbox One"),
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
          eventCardGenerator("Super Smash Bros: Ultimate"),

          Divider(height: 10),

          Text("Playstation 4"),
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
          eventCardGenerator("Super Smash Bros: Ultimate"),
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
          genreView(),
          platformView(),
        ],
        controller: widget.tabController
    );
  }
}
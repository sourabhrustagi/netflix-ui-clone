import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.black, brightness: Brightness.dark),
      home: HomeView(),
    );
  }
}

const TextStyle topMenuStyle =
    TextStyle(fontSize: 14, color: Colors.white, fontWeight: FontWeight.bold);

class HomeView extends StatelessWidget {
  final TextStyle bottomMenuStyle =
      const TextStyle(fontSize: 12, color: Colors.white);

  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: ListView(
        children: <Widget>[
          Container(
            height: 500,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/avangers.jpg"),
                    fit: BoxFit.fill)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        height: 50,
                        width: 50,
                        child: const Image(
                          image: AssetImage("assets/netflix.png"),
                        ),
                      ),
                      CupertinoButton(
                          onPressed: () {},
                          child: const Text("Series", style: topMenuStyle)),
                      CupertinoButton(
                          onPressed: () {},
                          child: const Text("Films", style: topMenuStyle)),
                      CupertinoButton(
                          onPressed: () {},
                          child: const Text("MyList", style: topMenuStyle)),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                CupertinoButton(
                  child: Column(
                    children: <Widget>[
                      const Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 26,
                      ),
                      Text(
                        "My List",
                        style: bottomMenuStyle,
                      )
                    ],
                  ),
                  onPressed: () {},
                ),
                CupertinoButton(
                  color: Colors.white,
                  child: const Row(
                    children: <Widget>[
                      Icon(Icons.play_arrow, color: Colors.black),
                      Text("Play", style: TextStyle(color: Colors.black))
                    ],
                  ),
                  onPressed: () {},
                ),
                CupertinoButton(
                  child: Column(
                    children: <Widget>[
                      const Icon(
                        Icons.info,
                        color: Colors.white,
                        size: 26,
                      ),
                      Text(
                        "info",
                        style: bottomMenuStyle,
                      )
                    ],
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          makePopularWidget("Popular on Netflix"),
          makePopularWidget("Trending Now"),
          makeContinueWatching("Continue Watching for Kalle"),
          bannerMovie(),
          makePopularWidget("NETFLIX ORIGINALS >"),
          makePopularWidget("Watch It Again"),
          makePopularWidget("New Releases"),
          makePopularWidget("US Crime TV Programmes"),
          makePopularWidget("Comedies"),
          makePopularWidget("Romance Programmes"),
          makePopularWidget("Documentaries"),
          makePopularWidget("US TV Dramas"),
        ],
      ),
    );
  }
}

Widget makeContinueWatching(String title) {
  return Container(
    padding: const EdgeInsets.only(left: 5, right: 5),
    height: 220,
    child: Column(
      children: <Widget>[
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[Text(title, style: topMenuStyle)],
          ),
        ),
        SizedBox(
          height: 200,
          child: ListView(
            padding: const EdgeInsets.all(3),
            scrollDirection: Axis.horizontal,
            children: makeContinueContainers(),
          ),
        )
      ],
    ),
  );
}

Widget makePopularWidget(String title) {
  return Container(
    padding: const EdgeInsets.only(left: 5, right: 5),
    height: 220,
    child: Column(
      children: <Widget>[
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[Text(title, style: topMenuStyle)],
          ),
        ),
        SizedBox(
          height: 200,
          child: ListView(
            padding: const EdgeInsets.all(3),
            scrollDirection: Axis.horizontal,
            children: makeContainers(),
          ),
        )
      ],
    ),
  );
}

int counter = 0;

List<Widget> makeContainers() {
  List<Container> movieList = [];
  for (var i = 0; i < 6; i++) {
    counter++;
    movieList.add(Container(
      padding: const EdgeInsets.only(left: 5, right: 10),
      width: 130,
      child: Image(
        image: AssetImage("assets/$counter.jpg"),
        fit: BoxFit.fitHeight,
      ),
    ));
    if (counter == 12) {
      counter = 0;
    }
  }
  return movieList;
}

List<Widget> makeContinueContainers() {
  List<Container> movieList = [];
  for (var i = 0; i < 6; i++) {
    counter++;
    movieList.add(Container(
      padding: const EdgeInsets.all(5),
      height: 200,
      width: 120,
      child: Column(
        children: <Widget>[
          Container(
            height: 140,
            width: 120,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/$counter.jpg"),
                fit: BoxFit.fitHeight,
              ),
            ),
            child: Center(
              child: CupertinoButton(
                child: const Icon(Icons.play_circle_outline, size: 70),
                onPressed: () {},
              ),
            ),
          ),
          Container(
            width: 110,
            height: 30,
            margin: const EdgeInsets.only(top: 3),
            decoration: BoxDecoration(
                color: Colors.black, borderRadius: BorderRadius.circular(2)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                    padding: const EdgeInsets.only(right: 25),
                    child: Text("S1:E3")),
                const Icon(
                  Icons.info,
                  size: 15,
                )
              ],
            ),
          )
        ],
      ),
    ));
    if (counter == 12) {
      counter = 0;
    }
  }
  return movieList;
}

Widget bannerMovie() {
  return Column(
    children: <Widget>[
      Container(
        padding: const EdgeInsets.only(left: 20),
        child: const Text(
          "Avalable Now",
          style: topMenuStyle,
        ),
      ),
      const SizedBox(height: 10),
      const Image(
        image: AssetImage("assets/birdboxBanner.jpg"),
      ),
      Container(
        padding: const EdgeInsets.only(top: 5, bottom: 5),
        color: Colors.black,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            CupertinoButton(
              onPressed: () {},
              color: Colors.white,
              child: Container(
                margin: const EdgeInsets.only(top: 8, bottom: 8),
                width: 120,
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.play_arrow,
                      color: Colors.black,
                    ),
                    Text(
                      "Play",
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
              ),
            ),
            CupertinoButton(
              onPressed: () {},
              color: const Color(0xFF664444),
              child: Container(
                margin: const EdgeInsets.only(top: 8, bottom: 8),
                width: 120,
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                    Text(
                      "My List",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      )
    ],
  );
}

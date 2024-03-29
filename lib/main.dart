import 'package:flutter/material.dart';
import 'package:flutterclone/src/ui/ui.dart';

void main() => runApp(MaterialApp(
      home: SplashScreen(),
      routes: <String, WidgetBuilder>{
        '/NetFlix': (BuildContext context) => Netflix()
      },
    ));

class Netflix extends StatelessWidget {
  const Netflix({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: MaterialApp(
        title: "Netflix Clone",
        theme: ThemeData(
          primaryColor: Colors.black,
          brightness: Brightness.dark,
        ),
        home: NetflixTabBar(),
      ),
    );
  }
}

class NetflixTabBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Theme(
        data: ThemeData(brightness: Brightness.dark),
        child: Scaffold(
          bottomNavigationBar: Container(
            color: Colors.black,
            height: 60,
            child: const TabBar(
              tabs: <Widget>[
                Tab(icon: Icon(Icons.home), text: "Home"),
                Tab(
                  icon: Icon(Icons.search),
                  text: "Search",
                ),
                Tab(
                  icon: Icon(Icons.file_download),
                  text: "Downloads",
                ),
                Tab(
                  icon: Icon(Icons.list),
                  text: "More",
                ),
              ],
              unselectedLabelColor: Color(0xFF999999),
              labelColor: Colors.white,
              indicatorColor: Colors.transparent,
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              HomePage(),
              SearchPage(),
              DownloadPage(),
              MorePage(),
            ],
          ),
        ),
      ),
    );
  }
}

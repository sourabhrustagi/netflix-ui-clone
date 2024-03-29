import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.black, brightness: Brightness.dark),
      home: const SearchView(),
    );
  }
}

const TextStyle topSearchStyle = TextStyle(fontSize: 12, color: Colors.white);

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: ListView(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(5),
            height: 60,
            decoration: const BoxDecoration(color: Colors.black),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: 40,
                      width: 220,
                      child: DecoratedBox(
                        decoration: const BoxDecoration(
                          borderRadius:
                              BorderRadius.all(Radius.circular(10.0)),
                          color: Color(0xFF999999),
                        ),
                        child: TextFormField(
                          decoration: const InputDecoration(
                              fillColor: Colors.grey,
                              hintText: 'Search',
                              contentPadding: EdgeInsets.all(10),
                              prefixIcon: Icon(
                                Icons.search,
                                size: 24,
                                color: Colors.white,
                              ),
                              border: InputBorder.none),
                        ),
                      ),
                    ),
                    CupertinoButton(
                        onPressed: () {},
                        child: const Text("Cancel", style: topSearchStyle)),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

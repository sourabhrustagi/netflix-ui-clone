import 'package:flutter/material.dart';

class DownloadPage extends StatelessWidget {
  const DownloadPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.black, brightness: Brightness.dark),
      home: const DownloadView(),
    );
  }
}

const TextStyle downloadLabelStyle =
    TextStyle(fontSize: 12, color: Colors.white);

class DownloadView extends StatelessWidget {
  final TextStyle bottomMenuStyle =
      const TextStyle(fontSize: 12, color: Colors.white);

  const DownloadView({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 150,
              height: 150,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: Colors.grey),
              child: const Icon(
                Icons.file_download,
                color: Colors.black,
                size: 100,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const SizedBox(
                width: 300,
                child: Text(
                  "Movies and TV shows that you downloaded appear here.",
                  textAlign: TextAlign.center,
                )),
            const SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                width: 250,
                padding: const EdgeInsets.symmetric(vertical: 6),
                decoration: BoxDecoration(
                  border: Border.all(width: 2, color: Colors.grey),
                ),
                child: const Text(
                  "FIND SOMETHING TO DOWNLOAD",
                  textAlign: TextAlign.center,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class NewsDescScreen extends StatelessWidget {
  int id;
  String title;
  String description;
  NewsDescScreen(
      {super.key,
      required this.id,
      required this.title,
      required this.description});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text("News Desc"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "$id) $title",
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 20,
            ),
            Text(description)
          ],
        ),
      ),
    );
  }
}

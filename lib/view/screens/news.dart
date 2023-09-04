import 'package:api_parsing/services/repository/news_repository.dart';
import 'package:flutter/material.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              NewsRepository.getNews();
            },
            child: Text("Hit API")),
      ),
    );
  }
}

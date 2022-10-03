import 'package:flutter/material.dart';
import 'package:news_clown/services/news_service.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the r∏oot of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'News Cloud',
      home: Scaffold(
        body: InkWell(
          onTap: () async {
            NewsApi newsApi = NewsApi();
            var articles = await newsApi.fetchArticles();
            for (var article in articles!) {
              print(article.title);
            }
          },
          child: Center(
            child: Container(
              child: Text('fetch data'),
            ),
          ),
        ),
      ),
    );
  }
}

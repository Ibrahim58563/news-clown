import 'dart:convert';

import 'package:news_clown/models/article_model.dart';
import 'package:http/http.dart' as http;
import 'package:news_clown/models/articles_model.dart';

class NewsApi {
  final String apiKey = 'bdcd432edce64b73b050a35f7def53cf';
  Future<List<Article>?>? fetchArticles() async {
    try {
      http.Response response = await http.get(
          'ahttps://newsapi.org/v2/top-headlines?sources=bbc-news&apiKey=$apiKey'
              as Uri);
      if (response.statusCode == 200) {
        String data = response.body;
        var jsonData = jsonDecode(data);
        Articles articles = Articles.fromJson(jsonData);
        // this line to convert data in articles from map to iterable of map kind article
        List<Article> articlesList =
            articles.articles.map((e) => Article.fromJson(e)).toList();
        return articlesList;
      } else {
        print('status code =${response.statusCode}');
      }
    } catch (e) {
      print(e);
    }
  }
}

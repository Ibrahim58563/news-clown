// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:news_clown/models/article_model.dart';

class Articles {
  List<dynamic> articles;
  Articles({
    required this.articles,
  });

  factory Articles.fromJson(Map<String, dynamic> jsonData) {
    return Articles(articles: jsonData["articles"]);
  }
}

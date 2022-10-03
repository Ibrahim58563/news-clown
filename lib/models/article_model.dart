// ignore_for_file: public_member_api_docs, sort_constructors_first
class Article {
  String title;
  String description;
  String imageUrl;
  String articleUrl;
  Article({
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.articleUrl,
  });

  factory Article.fromJson(Map<String, dynamic> jsonData) {
    return Article(
        title: jsonData["title"],
        description: jsonData["description"],
        imageUrl: jsonData["urlToImage"],
        articleUrl: jsonData["url"]);
  }
}

class NewsModelEntity {
  String status;
  int totalResults;
  List<ArticlesEntity> articles;

  NewsModelEntity(this.status, this.totalResults, this.articles);
}

class ArticlesEntity {
  String author;
  String title;
  String description;
  String urlToImage;
  String content;

  ArticlesEntity(
    this.author,
    this.title,
    this.description,
    this.urlToImage,
    this.content,
  );
}

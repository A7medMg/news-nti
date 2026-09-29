class NewsModel {
  String? status;

  List<Articles>? articles;

  NewsModel({this.status, this.articles});

  NewsModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    if (json['articles'] != null) {
      articles = <Articles>[];
      json['articles'].forEach((v) {
        articles!.add(new Articles.fromJson(v));
      });
    }
  }

}

class Articles {
  String? author;
  String? title;
  String? description;
  String? urlToImage;

  Articles(
      {
        this.author,
        this.title,
        this.description,
        this.urlToImage,
        });

  Articles.fromJson(Map<String, dynamic> json) {
    author = json['author'];
    title = json['title'];
    description = json['description'];
    urlToImage = json['urlToImage'];
  }

}


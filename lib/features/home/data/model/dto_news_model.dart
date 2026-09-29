import 'package:news/features/home/domain/entities/news_model_entity.dart';

class DtoNewsModel {
  String? status;
  int? totalResults;
  List<ArticlesDto>? articles;

  DtoNewsModel({this.status, this.totalResults, this.articles});

  DtoNewsModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    totalResults = json['totalResults'];
    if (json['articles'] != null) {
      articles = <ArticlesDto>[];
      json['articles'].forEach((v) {
        articles!.add( ArticlesDto.fromJson(v));
      });
    }
  }
 NewsModelEntity toEntity()=>NewsModelEntity(status??"", totalResults??0,articles!.map((e)=>e.toEntity()).toList() );

}

class ArticlesDto {
  SourcDto? source;
  String? author;
  String? title;
  String? description;
  String? url;
  String? urlToImage;
  String? publishedAt;
  String? content;

  ArticlesDto(
      {this.source,
      this.author,
      this.title,
      this.description,
      this.url,
      this.urlToImage,
      this.publishedAt,
      this.content});

  ArticlesDto.fromJson(Map<String, dynamic> json) {
    source =
        json['source'] != null ?  SourcDto.fromJson(json['source']) : null;
    author = json['author'];
    title = json['title'];
    description = json['description'];
    url = json['url'];
    urlToImage = json['urlToImage'];
    publishedAt = json['publishedAt'];
    content = json['content'];
  }
ArticlesEntity toEntity()=>ArticlesEntity(author??"", title??"", description??"", urlToImage??"", content??"");

 
}

class SourcDto {
  String? id;
  String? name;

  SourcDto({this.id, this.name});

  SourcDto.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
  }

 
}

import 'package:news/features/home/data/model/news_model.dart';

abstract class NewsState {}

 class NewsLoading extends NewsState {}
class NewsSuccess extends NewsState {
 final List<Articles> articles;
 NewsSuccess(this.articles);
}
class NewsError extends NewsState{
  final String errMessage;
  NewsError(this.errMessage);
}

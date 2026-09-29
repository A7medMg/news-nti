
import 'package:news/features/home/domain/entities/news_model_entity.dart';

abstract class NewsState {}

 class NewsLoading extends NewsState {}
class NewsSuccess extends NewsState {
 final List<ArticlesEntity> articles;
 NewsSuccess(this.articles);
}
class NewsError extends NewsState{
  final String errMessage;
  NewsError(this.errMessage);
}

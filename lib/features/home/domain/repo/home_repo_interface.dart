import 'package:news/core/utils/api_result.dart';
import 'package:news/features/home/domain/entities/news_model_entity.dart';

abstract interface class HomeRepoInterface {
  Future<ApiResult<NewsModelEntity>> getData();
}
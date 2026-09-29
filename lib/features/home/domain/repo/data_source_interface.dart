import 'package:news/core/utils/api_result.dart';
import 'package:news/features/home/domain/entities/news_model_entity.dart';

abstract class DataSourceInterface {
  Future<ApiResult<NewsModelEntity>> getData();
}
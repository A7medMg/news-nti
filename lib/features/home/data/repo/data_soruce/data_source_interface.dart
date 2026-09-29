import 'package:news/core/utils/api_result.dart';
import 'package:news/features/home/data/model/news_model.dart';

abstract class DataSourceInterface {
  Future<ApiResult<NewsModel>> getData();
}
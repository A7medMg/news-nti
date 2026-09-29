import 'package:news/core/utils/api_result.dart';
import 'package:news/features/home/data/model/dto_news_model.dart';

abstract interface class HomeApiInterface {
  Future<ApiResult<DtoNewsModel>> callGetNews();
}
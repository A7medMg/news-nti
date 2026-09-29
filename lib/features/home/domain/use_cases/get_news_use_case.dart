import 'package:news/core/utils/api_result.dart';
import 'package:news/features/home/domain/entities/news_model_entity.dart';
import 'package:news/features/home/domain/repo/home_repo_interface.dart';

class GetNewsUseCase {
  final HomeRepoInterface _homeRepoInterface;
  GetNewsUseCase(this._homeRepoInterface);
  Future<ApiResult<NewsModelEntity>> invok()async=>await _homeRepoInterface.getData();
}
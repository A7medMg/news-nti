import 'package:news/core/utils/api_result.dart';
import 'package:news/features/home/domain/entities/news_model_entity.dart';
import 'package:news/features/home/domain/repo/data_source_interface.dart';
import 'package:news/features/home/domain/repo/home_repo_interface.dart';

class HomeRepoImp implements HomeRepoInterface {
  final DataSourceInterface _dataSourceInterface;
  HomeRepoImp(this._dataSourceInterface);
  @override
  Future<ApiResult<NewsModelEntity>> getData() async {
    var result = await _dataSourceInterface.getData();
    switch (result) {
      case Success<NewsModelEntity>():
      var dataEntity=result.data;
      dataEntity.articles.removeWhere((e)=>e.urlToImage.isEmpty);
      return Success(dataEntity);
      case Error<NewsModelEntity>():
      return Error(result.errMessage);
     
    }
  }
}

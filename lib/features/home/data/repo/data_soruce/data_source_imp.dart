import 'package:news/core/utils/api_result.dart';
import 'package:news/features/home/data/api/home_api_interface.dart';
import 'package:news/features/home/data/model/dto_news_model.dart';
import 'package:news/features/home/domain/entities/news_model_entity.dart';
import 'package:news/features/home/domain/repo/data_source_interface.dart';

class DataSourceImp implements DataSourceInterface {
  final HomeApiInterface _homeApiInterface;

  DataSourceImp(this._homeApiInterface);
  @override
  Future<ApiResult<NewsModelEntity>> getData() async {
    var data = await _homeApiInterface.callGetNews();
    switch (data) {
      case Success<DtoNewsModel>():
        return Success(data.data.toEntity());
      case Error<DtoNewsModel>():
        return Error(data.errMessage);
    }
  }
}

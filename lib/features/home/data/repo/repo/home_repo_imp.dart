
import 'package:news/core/utils/api_result.dart';
import 'package:news/features/home/data/model/news_model.dart';
import 'package:news/features/home/data/repo/data_soruce/data_source_interface.dart';
import 'package:news/features/home/data/repo/repo/home_repo_interface.dart';

class HomeRepoImp implements HomeRepoInterface {
  final DataSourceInterface _dataSourceInterface;
  HomeRepoImp(this._dataSourceInterface);
  @override
  Future<ApiResult<NewsModel>> getData() async=>await _dataSourceInterface.getData();
   

  
}

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news/features/home/data/model/news_model.dart';
import 'package:news/core/utils/api_result.dart';
import 'package:news/features/home/data/repo/repo/home_repo_interface.dart';
import 'package:news/features/home/presentation/logic/news_state.dart';



class NewsCubit extends Cubit<NewsState> {
  final HomeRepoInterface _homeRepoInterface;
  NewsCubit(this._homeRepoInterface) : super(NewsLoading());
  void getArticles()async{
    var result=await _homeRepoInterface.getData();
    switch(result) {
      case Success<NewsModel>():
       var articles=result.data.articles??[];
       emit(NewsSuccess(articles));
      case Error<NewsModel>():
        var error=result.errMessage;
        emit(NewsError(error));

    }
  }
}

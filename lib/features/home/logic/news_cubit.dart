
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news/core/data/api_manager.dart';
import 'package:news/core/data/news_model.dart';
import 'package:news/core/utils/api_result.dart';
import 'package:news/features/home/logic/news_state.dart';



class NewsCubit extends Cubit<NewsState> {
  NewsCubit() : super(NewsLoading());
  void getArticles()async{
    var result=await ApiManager.getData();
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


import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news/core/utils/api_result.dart';
import 'package:news/features/home/domain/entities/news_model_entity.dart';
import 'package:news/features/home/domain/repo/home_repo_interface.dart';
import 'package:news/features/home/presentation/logic/news_state.dart';



class NewsCubit extends Cubit<NewsState> {
  final HomeRepoInterface _homeRepoInterface;
  NewsCubit(this._homeRepoInterface) : super(NewsLoading());
  void getArticles()async{
    var result=await _homeRepoInterface.getData();
    switch(result) {
      case Success<NewsModelEntity>():
       var articles=result.data.articles;
       emit(NewsSuccess(articles));
      case Error<NewsModelEntity>():
        var error=result.errMessage;
        emit(NewsError(error));

    }
  }
}

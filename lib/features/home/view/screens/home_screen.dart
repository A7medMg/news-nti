import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news/core/theming/app_text_styles.dart';
import 'package:news/features/home/logic/news_state.dart';

import '../../logic/news_cubit.dart';
import '../widgets/articles_list_view_builder.dart';
import '../widgets/custom_container_image.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NewsCubit()..getArticles(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('News App'),
        ),
        body:BlocBuilder<NewsCubit,NewsState>(builder: (context,state){
          if(state is NewsSuccess){
            return ArticlesListViewBuilder(articles: state.articles,);
          }
          if (state is NewsError){
            return Center(
              child: Text(state.errMessage,style: AppTextStyles.bold22Withe,),
            );
          }
          return Center(
            child: CircularProgressIndicator(),
          );
        }),

      ),
    );
  }
}

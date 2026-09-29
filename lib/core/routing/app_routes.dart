import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news/core/routing/routes_name.dart';
import 'package:news/features/home/data/repo/data_soruce/data_source_imp.dart';
import 'package:news/features/home/data/repo/repo/home_repo_imp.dart';
import 'package:news/features/home/presentation/logic/news_cubit.dart';

import '../../features/home/presentation/view/screens/details_screen.dart';
import '../../features/home/presentation/view/screens/home_screen.dart';
import '../../features/home/data/model/news_model.dart';

class AppRoutes {
  static Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.home:
        return MaterialPageRoute(
          builder: (_) =>  BlocProvider(
            create: (context) => NewsCubit(HomeRepoImp(DataSourceImp()))..getArticles(),
            child: HomeScreen(),
          ),
        );
      case RoutesName.details:
        final article = settings.arguments as Articles;
        return MaterialPageRoute(
          builder: (_) => DetailsScreen(article: article),
        );
      default:
        return null;
    }
  }
}

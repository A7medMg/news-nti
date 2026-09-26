import 'package:flutter/material.dart';
import 'package:news/core/routing/routes_name.dart';

import '../../features/home/view/screens/details_screen.dart';
import '../../features/home/view/screens/home_screen.dart';
import '../data/news_model.dart';

class AppRoutes {
  static Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.home:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case RoutesName.details:
        final article = settings.arguments as Articles;
        return MaterialPageRoute(builder: (_) =>  DetailsScreen(article: article, ));
      default:
        return null;
    }
  }
}
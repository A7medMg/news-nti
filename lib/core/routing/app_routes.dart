import 'package:flutter/material.dart';
import 'package:news/core/routing/routes_name.dart';

import '../../features/home/view/screens/details_screen.dart';
import '../../features/home/view/screens/home_screen.dart';

class AppRoutes {
  static Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.home:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case RoutesName.details:
        return MaterialPageRoute(builder: (_) => const DetailsScreen());
      default:
        return null;
    }
  }
}
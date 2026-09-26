import 'package:flutter/material.dart';
import 'package:news/core/routing/routes_name.dart';
import 'package:news/core/theming/app_theming.dart';

import 'core/routing/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppTheming.darkTheme,
      initialRoute:RoutesName.home,
      onGenerateRoute: AppRoutes.generateRoute,


    );
  }
}

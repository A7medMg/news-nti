import 'package:flutter/material.dart';
import 'package:news/core/theming/app_colors.dart';
import 'package:news/core/theming/app_text_styles.dart';

class AppTheming {
  static final darkTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.primaryColor,
    appBarTheme: AppBarThemeData(
      centerTitle: true,
      backgroundColor: AppColors.appBarr,
      titleTextStyle: AppTextStyles.bold22Withe,
    ),
    textTheme: TextTheme(

      titleMedium:AppTextStyles.regular16LighterWhite ,
      titleSmall: AppTextStyles.regular13gray,


    )

  );
}
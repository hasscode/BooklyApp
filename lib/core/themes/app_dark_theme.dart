import 'package:flutter/material.dart';
import 'app_colors.dart';
import 'app_text_styles.dart';
ThemeData darkTheme =  ThemeData(
    appBarTheme: AppBarTheme(color: Colors.transparent
        ,elevation: 0
    ),
primaryColor: AppColors.secondryColor,
    secondaryHeaderColor :AppColors.primaryColor,

    scaffoldBackgroundColor: AppColors.secondryColor,
    textTheme: const TextTheme().copyWith(
        bodySmall: AppStyles.styleRegular14,
        bodyMedium:  AppStyles.styleRegular18,
        bodyLarge: AppStyles.styleRegular30,
        displaySmall: AppStyles.styleRegular14,
        displayMedium: AppStyles.styleRegular18,
        displayLarge: AppStyles.styleRegular30
    ) );
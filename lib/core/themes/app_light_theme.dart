import 'package:flutter/material.dart';
import 'app_colors.dart';
import 'app_text_styles.dart';
ThemeData lightTheme =   ThemeData(
    appBarTheme: AppBarTheme(color: Colors.transparent,
        elevation: 0),
    scaffoldBackgroundColor: AppColors.primaryColor,
    primaryColor: AppColors.primaryColor,
    secondaryHeaderColor: AppColors.secondryColor,
    textTheme: const TextTheme().copyWith(
        bodySmall: AppStyles.styleRegular14.copyWith(color: AppColors.secondryColor),
        bodyMedium:  AppStyles.styleRegular18.copyWith(color: AppColors.secondryColor),
        bodyLarge: AppStyles.styleRegular30.copyWith(color: AppColors.secondryColor),
        displaySmall: AppStyles.styleRegular14.copyWith(color: AppColors.secondryColor),
        displayMedium: AppStyles.styleRegular18.copyWith(color: AppColors.secondryColor),
        displayLarge: AppStyles.styleRegular30.copyWith(color: AppColors.secondryColor)
    )


);
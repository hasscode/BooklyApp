import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/themes/app_colors.dart';
import '../../data/enums/theme_states_enum.dart';
import '../../logic/theme cubit/app_theme_cubit.dart';
class ChangeThemeButton extends StatelessWidget {
  const ChangeThemeButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        BlocProvider.of<AppThemeCubit>(context).changeTheme(
          BlocProvider.of<AppThemeCubit>(context).isDarkTheme! ? ThemeState.light : ThemeState.dark,
        );
      },
      icon:
      BlocProvider.of<AppThemeCubit>(context).isDarkTheme!
          ? Icon(
        Icons.dark_mode_outlined,
        color: AppColors.primaryColor,
      )
          : Icon(Icons.light_mode),
    );
  }
}

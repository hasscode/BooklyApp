import 'package:booklyapp/core/utls/app_router.dart';
import 'package:booklyapp/features/home/presentation/widgets/change_theme_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/themes/app_colors.dart';
import '../../../../core/themes/app_images.dart';
import '../../data/enums/theme_states_enum.dart';
import '../../logic/theme cubit/app_theme_cubit.dart';

class BooklyAppBarWidget extends StatelessWidget {
  const BooklyAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        BlocProvider.of<AppThemeCubit>(context).isDarkTheme!
            ? SvgPicture.asset(Assets.logoIcon)
            : SvgPicture.asset(Assets.logoIcon, color: AppColors.secondryColor),
        Spacer(),
        IconButton(onPressed: () {
          GoRouter.of(context).push(AppRouter.searchView);
        }, icon: Icon(CupertinoIcons.search,color: Theme.of(context).secondaryHeaderColor,)),
        Spacer(),
        ChangeThemeButton(),
      ],
    );
  }
}

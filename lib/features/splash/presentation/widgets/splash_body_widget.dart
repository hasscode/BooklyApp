import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/themes/app_colors.dart';
import '../../../../core/themes/app_images.dart';
import '../../../home/logic/theme cubit/app_theme_cubit.dart';



class SplashBodyWidget extends StatelessWidget {
  const SplashBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        BlocProvider.of<AppThemeCubit>(context).isDarkTheme!?SvgPicture.asset(Assets.logoIcon,width: 250.w,):SvgPicture.asset(Assets.logoIcon,color: AppColors.secondryColor,width: 250.w)
            .animate()
            .fadeIn()
            .move(delay: 300.ms, duration: 600.ms)

      ],
    );
  }
}

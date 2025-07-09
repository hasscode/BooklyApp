import 'package:booklyapp/core/themes/app_colors.dart';
import 'package:booklyapp/core/themes/app_dark_theme.dart';
import 'package:booklyapp/core/utls/app_router.dart';
import 'package:booklyapp/features/home/data/enums/theme_states_enum.dart';
import 'package:booklyapp/features/home/logic/theme%20cubit/app_theme_cubit.dart';
import 'package:booklyapp/features/home/logic/theme%20cubit/app_theme_states.dart';
import 'package:booklyapp/features/home/presentation/views/book_details_view.dart';
import 'package:booklyapp/features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'core/constants.dart';
import 'core/themes/app_light_theme.dart';


void main() async{
  await ScreenUtil.ensureScreenSize();
  WidgetsFlutterBinding.ensureInitialized();
  sharedPreferences =await SharedPreferences.getInstance();
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      builder: (context, child) => BlocProvider(
        create: (context) => AppThemeCubit()..changeTheme(ThemeState.initial),
        child: BlocBuilder<AppThemeCubit, AppThemeState>(
          builder: (context, state) {
            final theme = (state is LightThemeState) ? lightTheme : darkTheme;
            return MaterialApp.router(
              routerConfig: AppRouter.router,
              theme: theme,
              debugShowCheckedModeBanner: false,
            );
          },
        ),
      ),
    );
  }
}


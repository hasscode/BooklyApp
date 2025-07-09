import 'package:booklyapp/features/home/presentation/views/home_view.dart';
import 'package:booklyapp/features/splash/presentation/widgets/splash_body_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/utls/app_router.dart';
class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> with SingleTickerProviderStateMixin{
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

    Future.delayed(const Duration(seconds: 4), () {
      if (!mounted) return;
      context.go(AppRouter.homeView);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SplashBodyWidget()
    );
  }
}

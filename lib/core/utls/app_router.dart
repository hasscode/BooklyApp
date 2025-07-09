import 'package:booklyapp/features/search/presentation/views/search_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../features/home/presentation/views/book_details_view.dart';
import '../../features/home/presentation/views/home_view.dart';
import '../../features/splash/presentation/views/splash_view.dart';



class AppRouter{
  static const String homeView='/homeView';
  static const String bookDetailsView='/BookDetailsView';
  static const String searchView='/SearchView';


   static final GoRouter router =GoRouter(

      routes: [
    GoRoute(path: '/',
        builder: (BuildContext context, GoRouterState state)=>SplashView()
    ),
    GoRoute(path: homeView,
        builder: (BuildContext context, GoRouterState state)=>HomeView()
    ),
    GoRoute(path: bookDetailsView,
        builder: (BuildContext context, GoRouterState state)=>BookDetailsView()
    ),
        GoRoute(path: searchView,
            builder: (BuildContext context, GoRouterState state)=>SearchView()
        ),

  ] );

}


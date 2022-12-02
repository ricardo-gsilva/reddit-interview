import 'package:flutter/material.dart';
import 'package:search_reddit/views/commentsPage/comments_page.dart';
import 'package:search_reddit/views/homePage/home_page.dart';
import 'package:search_reddit/views/screenPage/splash_screen.dart';

class Routes {
  Routes._();

  static String homePage = '/home';
  static String splashScreen = '/splashScreen';
  static String commentsPage = '/commentsPage';
  static String repositoryPage = '/repositoryPage';

  static final routesWidgets = <String, WidgetBuilder>{
    splashScreen: (context) => const SplashScreenPage(),
    commentsPage: (context) => const CommentsPage(),
    homePage: (context) => const HomePage(),
  };
  
}
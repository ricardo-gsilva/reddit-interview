import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:search_reddit/service/service_locator.dart';
import 'package:search_reddit/util/rotes.dart';
import 'package:search_reddit/views/homePage/home_page.dart';
import 'package:search_reddit/views/screenPage/splash_screen.dart';

import 'controller/auth_service_firebase.dart';

void main() async{
  runZonedGuarded(() async{
    WidgetsFlutterBinding.ensureInitialized();
    setup();
    await Firebase.initializeApp();

    FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterError;
    runApp(const MyApp());
  }, (error, stack) => FirebaseCrashlytics.instance.recordError(error, stack));  
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      routes: Routes.routesWidgets,
      theme: ThemeData(       
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreenPage()
    );
  }
}

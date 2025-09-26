import 'package:flutter/material.dart';
import 'package:islame/core/Theme/app_theme_manager.dart';
import 'package:islame/core/constants/app_routes_name.dart';
import 'package:islame/layout/pages/layout_view.dart';
import 'package:islame/modules/splash/pages/splash_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Islame App',
      theme: AppThemeManager.appThemeData(),
      initialRoute: AppRoutesName.initial,
      routes: {
        AppRoutesName.initial: (context) => const SplashView(),
        AppRoutesName.LayoutRoute: (context) => const LayoutView(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}

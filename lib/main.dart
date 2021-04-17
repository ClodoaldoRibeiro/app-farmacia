import 'package:farmacia_app/screens/base/base_screen.dart';
import 'package:farmacia_app/screens/splash/splash_screen.dart';
import 'package:farmacia_app/screens/themes/app_colors.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Farmácia',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: AppColors.COR_PALLETA,
        fontFamily: 'Roboto',
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SplashScreen(),
    );
  }
}

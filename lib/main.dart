import 'package:farmacia_app/screens/splash/splash_screen.dart';
import 'package:farmacia_app/screens/themes/app_colors.dart';
import 'package:farmacia_app/stores/user_manager_store.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';



void setupLocators() {
  // GetIt.I.registerSingleton(ConnectivityStore());
  GetIt.I.registerSingleton(UserManagerStore());
}

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setupLocators();
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

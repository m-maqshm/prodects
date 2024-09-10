import 'package:flutter/material.dart';
import 'package:untitled1/utils/app_routes.dart';
import 'package:untitled1/views/cart_screen.dart';
import 'package:untitled1/views/details_screen.dart';
import 'package:untitled1/views/home_screen.dart';
import 'package:untitled1/views/login_screen.dart';
import 'package:untitled1/views/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: false),
      //home: HomeScreen(),
      initialRoute: "/splash",
      onGenerateRoute: AppRoutes.routeManager,
      // routes: {
      //   "/home":(ctx)=>HomeScreen(),
      //   "/details":(ctx)=>DetailsScreen(),
      //   "/cart":(ctx)=>CartScreen(),
      //   "/splash":(ctx)=>SplashScreen(),
      //   "/login":(ctx)=>LoginScreen(),
      //
      // },
    );
  }
}

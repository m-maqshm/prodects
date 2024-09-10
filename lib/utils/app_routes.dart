import 'package:flutter/material.dart';
import 'package:untitled1/models/product.dart';
import 'package:untitled1/views/cart_screen.dart';
import 'package:untitled1/views/details_screen.dart';
import 'package:untitled1/views/home_screen.dart';
import 'package:untitled1/views/login_screen.dart';
import 'package:untitled1/views/not_found.dart';
import 'package:untitled1/views/order.dart';
import 'package:untitled1/views/splash_screen.dart';

import '../views/demoSreane.dart';
import '../views/sinupScreane.dart';

class AppRoutes{
  static Route<dynamic>? routeManager(RouteSettings settings ){

    switch(settings.name){
      case '/home': return MaterialPageRoute(builder: (ctx)=>HomeScreen());
      case '/details':{
        Product product = settings.arguments as Product;
        return MaterialPageRoute(builder: (ctx)=>DetailsScreen(p: product),settings: settings);}
      case '/cart':{
        List<Map<Product,int>> cartItems=settings.arguments as List<Map<Product,int>>;
        return MaterialPageRoute(builder: (ctx)=>CartScreen(cart: cartItems));}
      case '/splash': return MaterialPageRoute(builder: (ctx)=>SplashScreen());
      case '/login': return MaterialPageRoute(builder: (ctx)=>LoginScreen());
      case '/demo': return MaterialPageRoute(builder: (ctx)=>DemoStalFullScrean());
      case '/sinup': return MaterialPageRoute(builder: (ctx)=>SinupScreane());
      case '/order': return MaterialPageRoute(builder: (ctx)=>OrderPage());
      default:return MaterialPageRoute(builder: (ctx)=>NotFoundScreen());
    }


  }
}
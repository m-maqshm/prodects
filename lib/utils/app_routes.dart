import 'package:flutter/material.dart';
import 'package:untitled1/models/product.dart';
import 'package:untitled1/views/screane/cart_screen.dart';
import '../views/screane/demoSreane.dart';
import '../views/screane/details_screen.dart';
import '../views/screane/fishedOrder.dart';
import '../views/screane/home_screen.dart';
import '../views/screane/login_screen.dart';
import '../views/screane/not_found.dart';
import '../views/screane/order.dart';
import '../views/screane/sinupScreane.dart';
import '../views/screane/splash_screen.dart';

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
      case '/finshorder': return MaterialPageRoute(builder: (ctx)=>FinshedOrder());
      default:return MaterialPageRoute(builder: (ctx)=>NotFoundScreen());
    }


  }
}
import 'package:flutter/material.dart';
import 'package:meal_monkey/authentication/signup.dart';
import 'package:meal_monkey/utils/Routes/meal_route.dart';
import 'package:meal_monkey/welcomePages/splash.dart';
import 'package:meal_monkey/authentication/login.dart';
import 'package:meal_monkey/welcomePages/welcomePageI.dart';
import 'package:meal_monkey/welcomePages/welcomePageII.dart';

class MealRouter{
  static Route<dynamic> onGenerateRoute(RouteSettings settings){
    switch (settings.name){
      case MealRoutes.splash:
      return MaterialPageRoute(builder: (_)=> const Splash(),
      settings: settings);
      case MealRoutes.welcome1:
      return MaterialPageRoute(builder: (_)=> const WelcomePageI(),
      settings: settings);
      case MealRoutes.welcome2:
      return MaterialPageRoute(builder: (_)=> const WelcomePageII(),
      settings: settings);
      case MealRoutes.login:
      return MaterialPageRoute(builder: (_)=> const Login(),
      settings: settings);
      case MealRoutes.signup:
      return MaterialPageRoute(builder: (_)=> const Signup(),
      settings: settings);
      default: 
        return MaterialPageRoute(
          builder: (_) => const Scaffold(
            body: Center(
              child: Text('NO Page Found!'),
            ),
          ),
        );
    }

  }
}
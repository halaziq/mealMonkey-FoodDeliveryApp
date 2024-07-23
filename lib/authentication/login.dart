import 'package:flutter/material.dart';
import 'package:meal_monkey/utils/Routes/meal_route.dart';
import 'package:meal_monkey/utils/Style/meal_colors.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MealColors.white,
      body: Center(child: Text(MealRoutes.login),),
    );
  }
}
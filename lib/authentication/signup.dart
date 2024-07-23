import 'package:flutter/material.dart';
import 'package:meal_monkey/utils/Routes/meal_route.dart';
import 'package:meal_monkey/utils/Style/meal_colors.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MealColors.white,
      body: Center(child: Text(MealRoutes.signup),),
    );
  }
}
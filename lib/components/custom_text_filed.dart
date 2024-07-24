import 'package:flutter/material.dart';
import 'package:meal_monkey/utils/Style/meal_colors.dart';

class CustomTextFiled extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final TextInputType keyboardType;
  final bool obscureText;

  const CustomTextFiled({
    super.key,
    required this.hintText,
    required this.controller,
    required this.keyboardType,
    required this.obscureText,
    });

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: MediaQuery.of(context).size.height*0.067,
      width: MediaQuery.of(context).size.width*0.75,

      //margin: EdgeInsets.symmetric(vertical: 8.0),
      padding:const EdgeInsets.symmetric(horizontal: 25.0,vertical: 7),
      decoration: BoxDecoration(
        color: MealColors.textFileds,
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: TextField(
        controller: controller,
        keyboardType: keyboardType,
        obscureText: obscureText,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hintText,
          hintStyle: const TextStyle(
            fontSize: 14,
            color: MealColors.textFiledString),
        ),
      ),
    );
  }
}
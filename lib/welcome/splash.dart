import 'dart:async';

import 'package:flutter/material.dart';
import 'package:meal_monkey/app_view.dart';
import 'package:meal_monkey/utils/Style/meal_colors.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context).push(
    MaterialPageRoute(
      builder: (context) => const AppView(),
    ),
  );
      
    });

    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Image.asset("assets/images/splash.png"),
            Image.asset("assets/images/Monkey face.png"),
            Padding(
              padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.22),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.07,
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Meal",
                      style: TextStyle(
                        fontSize: 34,
                        fontWeight: FontWeight.bold,
                        color: MealColors.orange,
                      ),
                    ),
                    Text(
                      "Monkey",
                      style: TextStyle(
                        fontSize: 34,
                        fontWeight: FontWeight.bold,
                        color: MealColors.primaryFont,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.32),
              child: const Text(
                "FOOD DELIVERY",
                style: TextStyle(
                  fontSize: 10,
                  color: MealColors.secondaryFont,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

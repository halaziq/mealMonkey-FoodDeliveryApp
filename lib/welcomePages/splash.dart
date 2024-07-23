import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:meal_monkey/utils/Routes/meal_route.dart';
import 'package:meal_monkey/utils/Style/meal_colors.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Splash> {

  @override
  void initState() {
    super.initState();
   

    Timer(const Duration(seconds: 3), () {
       Navigator.pushNamed(
                        context,
                        MealRoutes.welcome1
                      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Image.asset("assets/images/splash.png"),
            Image.asset("assets/images/Monkey face.png"),
            Padding(
              padding:  EdgeInsets.only(top: MediaQuery.of(context).size.height *0.22),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height*0.07,
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Meal",style: TextStyle(
                      fontSize: 34,
                      fontWeight: FontWeight.bold,
                      color: MealColors.orange
                    ),),
                     Text("Monkey",style: TextStyle(
                      fontSize: 34,
                      fontWeight: FontWeight.bold,
                      color: MealColors.primaryFont
                    ),),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.32),
              child:const Text("FOOD DELIVERY",style: TextStyle(
                fontSize: 10,
                color:MealColors.secondaryFont

              ),)
            ),

          ],
        )

        
      ),
    );
  }
}
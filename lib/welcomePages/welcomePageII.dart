import 'package:flutter/material.dart';
import 'package:meal_monkey/components/customElevatedButton.dart';
import 'package:meal_monkey/utils/Routes/meal_route.dart';
import 'package:meal_monkey/utils/Style/meal_colors.dart';

class WelcomePageII extends StatefulWidget {
  const WelcomePageII({super.key});

  @override
  State<WelcomePageII> createState() => _WelcomePageIIState();
}

class _WelcomePageIIState extends State<WelcomePageII> {
  String find1 = "Discover the best foods from over 1,000 restaurants and fast delivery to your doorstep";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MealColors.white,
      body: Column(children: [
        Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Image.asset("assets/images/Organe top shape.png",
             height: MediaQuery.of(context).size.height*0.5,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,),
          Image.asset("assets/images/Monkey face.png")

          ],
        ),
         SizedBox(
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
            const Text("FOOD DELIVERY",style: TextStyle(
              fontSize: 10,
              color:MealColors.secondaryFont
            
            ),),
            Padding(
               padding:  EdgeInsets.only(top: MediaQuery.of(context).size.height*0.05),
               child: SizedBox(
                height: MediaQuery.of(context).size.height*0.07,
                width:MediaQuery.of(context).size.width*0.88 ,
                 child: Text(
                
                   find1,
                  textAlign: TextAlign.center,
                   style:const TextStyle(
                        fontSize: 13,
                        color: MealColors.secondaryFont,
                       ),),
               ),
             ),
             Padding(
               padding:  EdgeInsets.only(top: MediaQuery.of(context).size.height*0.1),
               child: CustomElevatedButton(
                text: "Login",
                onPressed: ()=>
                  Navigator.pushNamed(context, MealRoutes.login)

                , 
                color: MealColors.orange,
                 textColor: MealColors.white, 
                 fontSize: 16,
                 borderColor: MealColors.orange,),
             ),
               Padding(
                 padding:  EdgeInsets.only(top: MediaQuery.of(context).size.height*0.02),
                 child: CustomElevatedButton(
                               text: "Create an Account",
                               onPressed: ()=>Navigator.pushNamed(context, MealRoutes.signup),
 
                               color: MealColors.white,
                 textColor: MealColors.orange, 
                 fontSize: 16,
                 borderColor: MealColors.orange,),
               )
             
             


      ]
      ,),
    );
  }
}
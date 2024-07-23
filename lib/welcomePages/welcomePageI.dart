import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:meal_monkey/components/customElevatedButton.dart';
import 'package:meal_monkey/utils/Routes/meal_route.dart';
import 'package:meal_monkey/utils/Routes/meal_router.dart';
import 'package:meal_monkey/utils/Style/meal_colors.dart';

class WelcomePageI extends StatefulWidget {
  const WelcomePageI({super.key});

  @override
  State<WelcomePageI> createState() => _WelcomePageIState();
}

class _WelcomePageIState extends State<WelcomePageI> {
  int counter =1;
  String imageI = "assets/images/welcomeI.png";
  String imageII = "assets/images/welcomeII.png";
  String imageIII = "assets/images/welcomeIII.png";
  String find = "Find Food You Love";
  String fast = "Fast Delivery";
  String live = "Live Tracking";
  String find1 = "Discover the best foods from over 1,000 restaurants and fast delivery to your doorstep";
  String fast1 = "Fast food delivery to your home, office wherever you are";
  String live1 = "Real time tracking of your food on the app once you placed the order";
  bool isEqualTo = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MealColors.white,
      body: SizedBox(
         height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width ,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height*0.35,
              width: MediaQuery.of(context).size.width * 0.6,
              child: Image.asset(counter == 1?imageI:counter==2?imageII:imageIII),
            ),
            Padding(
              padding:  EdgeInsets.only(top: MediaQuery.of(context).size.height*0.027),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                   radius: MediaQuery.of(context).size.width*0.012,
                   backgroundColor: counter == 1? MealColors.orange:MealColors.textFiledString, 
                  ),
                   Padding(
                     padding:  EdgeInsets.only(left: MediaQuery.of(context).size.width*0.007),
                     child: CircleAvatar(
                     radius: MediaQuery.of(context).size.width*0.012,
                     backgroundColor: counter == 2? MealColors.orange:MealColors.textFiledString, 
                                     ),
                   ),
                   Padding(
                     padding:  EdgeInsets.only(left: MediaQuery.of(context).size.width*0.007),               
                         child: CircleAvatar(
                     radius: MediaQuery.of(context).size.width*0.012,
                     
                     backgroundColor: counter == 3? MealColors.orange:MealColors.textFiledString, 
                                     ),
                   ),
                  
                ],
              ),
            ),
             Padding(
               padding:  EdgeInsets.only(top: MediaQuery.of(context).size.height*0.05),
               child: Text(counter == 1? find:counter== 2? fast:live, style:const TextStyle(
                      fontSize: 28,
                      color: MealColors.primaryFont,
                     ),),
             ),
               Padding(
               padding:  EdgeInsets.only(top: MediaQuery.of(context).size.height*0.05),
               child: SizedBox(
                height: MediaQuery.of(context).size.height*0.07,
                width:MediaQuery.of(context).size.width*0.88 ,
                 child: Text(
                
                  counter == 1? find1:counter== 2? fast1:live1,
                  textAlign: TextAlign.center,
                   style:const TextStyle(
                        fontSize: 13,
                        color: MealColors.secondaryFont,
                       ),),
               ),
             ),

             Padding(
               padding:  EdgeInsets.only(top:MediaQuery.of(context).size.height*0.1),
               child: CustomElevatedButton(
                text: "Next",
                color: MealColors.orange,
                borderColor: MealColors.orange,
                textColor: MealColors.white,
                onPressed: (){
                  if(mounted){
                    setState(() {
                    counter++;
                      
                    });
                  }
                  if(counter > 3){
                    Navigator.pushNamed(context,MealRoutes.welcome2);
                    
                  }
                },
                fontSize: 16,
               
               ),
             )
        
        ],),
      ),
    );
  }
}
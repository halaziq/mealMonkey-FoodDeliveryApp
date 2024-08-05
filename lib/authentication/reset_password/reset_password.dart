
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:meal_monkey/components/custom_elevated_button.dart';
import 'package:meal_monkey/components/custom_text_filed.dart';
import 'package:meal_monkey/utils/Style/meal_colors.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({super.key});

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  final TextEditingController phone = TextEditingController();  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: MealColors.white,
      body: Column(
        children: [
           Padding(
             padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.1),
             child: Row(
              children: [
                 IconButton(
                  onPressed: () => Navigator.pop(context),
                icon:const Icon(Icons.arrow_back_ios_sharp,
                 size:25),
                 ),
                 Padding(
                   padding:  EdgeInsets.only(left: MediaQuery.of(context).size.width *0.12,
                   //top: MediaQuery.of(context).size.height *0.005
                   ),
                   child: const Text("Reset Password", style: TextStyle(
                    fontSize: 25,
                    
                   ),),
                 )
              ],
                       ),
           ),

           Padding(
             padding:  EdgeInsets.only(top: MediaQuery.of(context).size.height*0.01),
             child: SizedBox(
              height: MediaQuery.of(context).size.height *0.09,
              width: MediaQuery.of(context).size.width * 0.69,
               child: const Text("Please enter your Phone to receive a code to  create a new password", style: TextStyle(
                color: MealColors.secondaryFont,
                fontSize: 14
               ),
               textAlign: TextAlign.center,),
             ),
           ),
           Padding(
             padding:  EdgeInsets.only(top: MediaQuery.of(context).size.height*0.07),
             child: CustomTextFiled(
              hintText: "Phone",
               controller: phone,
                keyboardType: TextInputType.phone , obscureText: false),
           ),

           Padding(
             padding:  EdgeInsets.only(top: MediaQuery.of(context).size.height*0.05),
             child: CustomElevatedButton(text: "Send",
              onPressed: (){}, 
              color: MealColors.orange,
              textColor: MealColors.white, 
              fontSize: 16,
              borderColor: MealColors.orange, 
              hasIcon: false),
           )
        

        ],
      ),
    );
  }
}
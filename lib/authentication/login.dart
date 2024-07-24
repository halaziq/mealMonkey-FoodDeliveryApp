import 'package:flutter/material.dart';
import 'package:meal_monkey/components/custom_elevated_button.dart';
import 'package:meal_monkey/components/custom_text_filed.dart';
import 'package:meal_monkey/utils/Routes/meal_route.dart';
import 'package:meal_monkey/utils/Style/meal_colors.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: MealColors.white,
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child:  Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding:  EdgeInsets.only(top: MediaQuery.of(context).size.height*0.1),
                child: const Text("Login",style:TextStyle(
                  fontSize: 30,
                  color: MealColors.primaryFont
                
                 )),
              ),
              const Text("Add your details to login",style: TextStyle(
                fontSize: 14,
                color: MealColors.secondaryFont
              ),),
              Padding(
                padding:  EdgeInsets.only(top: MediaQuery.of(context).size.height*0.03),
                child: CustomTextFiled(
                  hintText: "Your Email", 
                controller: _email,
                keyboardType: TextInputType.emailAddress,
                obscureText: false,
                ),
              ),
        
              Padding(
                padding:  EdgeInsets.only(top: MediaQuery.of(context).size.height*0.03),
                child: CustomTextFiled(
                  hintText: "Password", 
                  controller: _password,
                  keyboardType: TextInputType.text,
                  obscureText: true,
                  ),
              ),
              Padding(
                padding:  EdgeInsets.only(top: MediaQuery.of(context).size.height*0.035),
                child: SizedBox(
                 width: MediaQuery.of(context).size.width*0.75,
                  child: CustomElevatedButton(
                    text: "Login", 
                    hasIcon: false,
                    onPressed: ()=> Navigator.pushNamed(context, MealRoutes.home),
                     color: MealColors.orange,
                     textColor: MealColors.white,
                      fontSize: 16,
                       borderColor: MealColors.orange),
                ),
              ),
        
              Padding(
                padding:  EdgeInsets.only(top: MediaQuery.of(context).size.height*0.025),
                child: TextButton(onPressed: (){},
                 child: const Text("Forgot your password?",
                 style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: MealColors.secondaryFont
                 ),)),
              ),
        
              Padding(
                padding:  EdgeInsets.only(top: MediaQuery.of(context).size.height* 0.06),
                child: const Text("or Login With",style: TextStyle(
                  color: MealColors.secondaryFont,
                  fontSize: 14
                ),),
              ),
        
                   Padding(
                padding:  EdgeInsets.only(top: MediaQuery.of(context).size.height*0.015),
                child: SizedBox(
                 width: MediaQuery.of(context).size.width*0.75,
                  child: CustomElevatedButton(
                    text: "Login with Facebook", 
                    hasIcon: true,
                    iconData: Icons.facebook,
                    onPressed: (){},
                     color: MealColors.facebook,
                     textColor: MealColors.white,
                      fontSize: 12,
                       borderColor: MealColors.facebook),
                ),
              ),
                   Padding(
                padding:  EdgeInsets.only(top: MediaQuery.of(context).size.height*0.025),
                child: SizedBox(
                 width: MediaQuery.of(context).size.width*0.75,
                  child: CustomElevatedButton(
                    text: "Login with Google", 
                    onPressed: (){},
                    hasIcon: true,
                    iconData: Icons.mail,
                     color: MealColors.gmail,
                     textColor: MealColors.white,
                      fontSize: 12,
                       borderColor: MealColors.gmail),
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(top: MediaQuery.of(context).size.height*0.09,bottom: MediaQuery.of(context).size.height*0.02 ),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height*0.05,
                  width: MediaQuery.of(context).size.width,
                  child:  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                       const Text("Don't have an Account?",
                       textAlign: TextAlign.end,
                       style: TextStyle(
                        fontSize: 14,
                        color: MealColors.secondaryFont
                      ),),
                      TextButton(
                        onPressed: ()=>Navigator.pushNamed(context, MealRoutes.signup),
                         child: const Text("Sign Up",
                         textAlign: TextAlign.start,
                         style: TextStyle(
                          color: MealColors.orange,
                          fontSize: 14
                         ),))
                    ],
                    
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
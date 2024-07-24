import 'package:flutter/material.dart';
import 'package:meal_monkey/components/custom_elevated_button.dart';
import 'package:meal_monkey/components/custom_text_filed.dart';
import 'package:meal_monkey/utils/Routes/meal_route.dart';
import 'package:meal_monkey/utils/Style/meal_colors.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final TextEditingController _name = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _mobile = TextEditingController();
  final TextEditingController _address = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final TextEditingController _confirm = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: MealColors.white,
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
               Padding(
                padding:  EdgeInsets.only(top: MediaQuery.of(context).size.height*0.1),
                child: const Text("Sign",style:TextStyle(
                  fontSize: 30,
                  color: MealColors.primaryFont
                 )),
              ),
              const Text("Add your details to sign up",style: TextStyle(
                fontSize: 14,
                color: MealColors.secondaryFont
              ),),

               Padding(
                padding:  EdgeInsets.only(top: MediaQuery.of(context).size.height*0.03),
                child: CustomTextFiled(
                  hintText: "Name", 
                controller: _name,
                keyboardType: TextInputType.text,
                obscureText: false,
                ),
              ),

               Padding(
                padding:  EdgeInsets.only(top: MediaQuery.of(context).size.height*0.03),
                child: CustomTextFiled(
                  hintText: "Email", 
                controller: _email,
                keyboardType: TextInputType.emailAddress,
                obscureText: false,
                ),
              ),

               Padding(
                padding:  EdgeInsets.only(top: MediaQuery.of(context).size.height*0.03),
                child: CustomTextFiled(
                  hintText: "Mobile No", 
                controller: _mobile,
                keyboardType: TextInputType.phone,
                obscureText: false,
                ),
              ),

               Padding(
                padding:  EdgeInsets.only(top: MediaQuery.of(context).size.height*0.03),
                child: CustomTextFiled(
                  hintText: "Address", 
                controller: _address,
                keyboardType: TextInputType.text,
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
                padding:  EdgeInsets.only(top: MediaQuery.of(context).size.height*0.03),
                child: CustomTextFiled(
                  hintText: "Confirm Password", 
                controller: _confirm,
                keyboardType: TextInputType.text,
                obscureText: true,
                ),
              ),

              Padding(
                padding:  EdgeInsets.only(top: MediaQuery.of(context).size.height*0.03),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width*0.75,
                  child: CustomElevatedButton(
                    text: "Sign Up",
                     onPressed: ()=> Navigator.pushNamed(context, MealRoutes.home),
                      color: MealColors.orange, 
                      textColor: MealColors.white,
                       fontSize: 16, 
                       borderColor: MealColors.orange, 
                       hasIcon: false),
                ),
              ),
               Padding(
                padding:  EdgeInsets.only(top: MediaQuery.of(context).size.height*0.055,bottom: MediaQuery.of(context).size.height*0.02 ),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height*0.05,
                  width: MediaQuery.of(context).size.width,
                  child:  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                       const Text("Already have an Account?",
                       textAlign: TextAlign.end,
                       style: TextStyle(
                        fontSize: 14,
                        color: MealColors.secondaryFont
                      ),),
                      TextButton(
                        onPressed: ()=>Navigator.pushNamed(context, MealRoutes.login),
                         child: const Text("Login",
                         textAlign: TextAlign.start,
                         style: TextStyle(
                          color: MealColors.orange,
                          fontSize: 14
                         ),))
                    ],
                    
                  ),
                ),
              ),

            ],),

        ),
      )
      
      
      
      
      
      
      
      
      
      
      
    );
  }
}
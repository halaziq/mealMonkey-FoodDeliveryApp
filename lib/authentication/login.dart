import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meal_monkey/authentication/sign_up/signup.dart';
import 'package:meal_monkey/blocs/authentication_bloc/authentication_bloc.dart';
import 'package:meal_monkey/blocs/signIn_bloc/sign_in_bloc.dart';
import 'package:meal_monkey/blocs/signUp_bloc/sign_up_bloc.dart';
import 'package:meal_monkey/components/custom_elevated_button.dart';
import 'package:meal_monkey/components/custom_text_filed.dart';
import 'package:meal_monkey/navigation/home_page.dart';
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
  final _formKey = GlobalKey<FormState>();

  bool isSignInRequired = false;
  @override
  Widget build(BuildContext context) {
    return BlocListener<SignInBloc, SignInState>(
      listener: (context, state) {
        if(state is SignInSuccess){
          setState(() {
          isSignInRequired = false;
          });
           Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const HomePage(), // Replace with your next page
            ),
           );
        } else if(state is SignInFaliure){
          setState(() {
             isSignInRequired = false;
          });
        }else if(state is SignInProcess){
          setState(() {
             isSignInRequired = true;
          });
         
        }
        
      },
      child: Scaffold(
        backgroundColor: MealColors.white,
        body: SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.1),
                  child: const Text("Login",
                      style: TextStyle(
                          fontSize: 30, color: MealColors.primaryFont)),
                ),
                const Text(
                  "Add your details to login",
                  style:
                      TextStyle(fontSize: 14, color: MealColors.secondaryFont),
                ),
                Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              top: MediaQuery.of(context).size.height * 0.03),
                          child: CustomTextFiled(
                            //errorMsg: "Enter Correct Email Please",
                            validator: (val) {
                              if (val!.isEmpty) {
                                return "Please Fill This Filed";
                              }
                              //  else if (!RegExp(
                              //         r'^[\w-\.]+@([\w-]+.)+[\w-]{2,4}$')
                              //     .hasMatch(val)) {
                              //   return "Please Enter Valid Email";
                              // }
                              return null;
                            },
                            hintText: "Your Email",
                            controller: _email,
                            keyboardType: TextInputType.emailAddress,
                            obscureText: false,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              top: MediaQuery.of(context).size.height * 0.03),
                          child: CustomTextFiled(
                            validator: (val) {
                              if (val!.isEmpty) {
                                return "Please Fill This Filed";
                              }
                              //  else if (!RegExp(
                              //         r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~`)\%\-(_+=;:,.<>/?"[{\]}\|^]).{8,}$')
                              //     .hasMatch(val)) {
                              //   return "Please Enter Valid Email";
                              // }
                              return null;
                            },
                            hintText: "Password",
                            controller: _password,
                            keyboardType: TextInputType.text,
                            obscureText: true,
                          ),
                        ),
                      ],
                    )),
               !isSignInRequired? Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.035),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.75,
                    child: CustomElevatedButton(
                        text: "Login",
                        hasIcon: false,
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            context.read<SignInBloc>().add(SignInRequired(
                              _email.text, _password.text));
                          }
                        },
                        color: MealColors.orange,
                        textColor: MealColors.white,
                        fontSize: 16,
                        borderColor: MealColors.orange),
                  ),
                ): const CircularProgressIndicator(),
                Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.025),
                  child: TextButton(
                      onPressed: () => Navigator.pushNamed(context, MealRoutes.resetPass),
                      child: const Text(
                        "Forgot your password?",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: MealColors.secondaryFont),
                      )),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.06),
                  child: const Text(
                    "or Login With",
                    style: TextStyle(
                        color: MealColors.secondaryFont, fontSize: 14),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.015),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.75,
                    child: CustomElevatedButton(
                        text: "Login with Facebook",
                        hasIcon: true,
                        iconData: Icons.facebook,
                        onPressed: () {},
                        color: MealColors.facebook,
                        textColor: MealColors.white,
                        fontSize: 12,
                        borderColor: MealColors.facebook),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.025),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.75,
                    child: CustomElevatedButton(
                        text: "Login with Google",
                        onPressed: () {},
                        hasIcon: true,
                        iconData: Icons.mail,
                        color: MealColors.gmail,
                        textColor: MealColors.white,
                        fontSize: 12,
                        borderColor: MealColors.gmail),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.09,
                      bottom: MediaQuery.of(context).size.height * 0.02),
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height * 0.05,
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Don't have an Account?",
                          textAlign: TextAlign.end,
                          style: TextStyle(
                              fontSize: 14, color: MealColors.secondaryFont),
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) =>
                                      BlocProvider<SignUpBloc>(
                                        create: (context) => SignUpBloc(
                                            userRepository: context
                                                .read<AuthenticationBloc>()
                                                .userRepository),
                                        child: const Signup(),
                                      )));
                            },
                            child: const Text(
                              "Sign Up",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  color: MealColors.orange, fontSize: 14),
                            ))
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

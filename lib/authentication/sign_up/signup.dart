import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meal_monkey/authentication/login.dart';
import 'package:meal_monkey/blocs/authentication_bloc/authentication_bloc.dart';
import 'package:meal_monkey/blocs/signIn_bloc/sign_in_bloc.dart';
import 'package:meal_monkey/blocs/signUp_bloc/sign_up_bloc.dart';
import 'package:meal_monkey/components/custom_elevated_button.dart';
import 'package:meal_monkey/components/custom_text_filed.dart';
import 'package:meal_monkey/navigation/home_page.dart';
import 'package:meal_monkey/utils/Routes/meal_route.dart';
import 'package:meal_monkey/utils/Style/meal_colors.dart';
import 'package:user_repository/user_repository.dart';

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
  final _formKey = GlobalKey<FormState>();


  bool signUpRequired = false;
  @override
  Widget build(BuildContext context) {
    return BlocListener<SignUpBloc, SignUpState>(
      listener: (context, state) {
        if(state is SignUpSuccess){
          setState(() {
            signUpRequired = false;
           
          });
            Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const HomePage(), // Replace with your next page
            ),
          );
        } else if(state is SignUpProcess){
          setState(() {
            signUpRequired = true;
          });
        }else if(state is SignUpFaliure){
          setState(() {
            signUpRequired = false;
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
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.1),
                    child: const Text("Sign",
                        style: TextStyle(
                            fontSize: 30, color: MealColors.primaryFont)),
                  ),
                  const Text(
                    "Add your details to sign up",
                    style: TextStyle(
                        fontSize: 14, color: MealColors.secondaryFont),
                  ),
                  Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              top: MediaQuery.of(context).size.height * 0.03),
                          child: CustomTextFiled(
                            validator: (name) {
                              if (name!.isEmpty) {
                                return "Please Fill This Filed";
                              }
                              return null;
                            },
                            hintText: "Name",
                            controller: _name,
                            keyboardType: TextInputType.text,
                            obscureText: false,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              top: MediaQuery.of(context).size.height * 0.03),
                          child: CustomTextFiled(
                            validator: (email) {
                              if (email!.isEmpty) {
                                return "Please Fill This Filed";
                              } 
                              // else if (!RegExp(
                              //         r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~`)\%\-(_+=;:,.<>/?"[{\]}\|^]).{8,}$')
                              //     .hasMatch(email)) {
                              //   return "Please Enter Valid Email";
                              // }
                              return null;
                            },
                            hintText: "Email",
                            controller: _email,
                            keyboardType: TextInputType.emailAddress,
                            obscureText: false,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              top: MediaQuery.of(context).size.height * 0.03),
                          child: CustomTextFiled(
                            validator: (phone) {
                              if (phone!.isEmpty) {
                                return "Please Fill This Filed";
                              }
                              return null;
                            },
                            hintText: "Mobile No",
                            controller: _mobile,
                            keyboardType: TextInputType.phone,
                            obscureText: false,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              top: MediaQuery.of(context).size.height * 0.03),
                          child: CustomTextFiled(
                            validator: (address) {
                              if (address!.isEmpty) {
                                return "Please Fill This Filed";
                              }
                              return null;
                            },
                            hintText: "Address",
                            controller: _address,
                            keyboardType: TextInputType.text,
                            obscureText: false,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              top: MediaQuery.of(context).size.height * 0.03),
                          child: CustomTextFiled(
                            validator: (password) {
                              if (password!.isEmpty) {
                                return "Please Fill This Filed";
                              } 
                              // else if (!RegExp(
                              //         r'^[\w-\.]+@([\w-]+.)+[\w-]{2,4}$')
                              //     .hasMatch(password)) {
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
                        Padding(
                          padding: EdgeInsets.only(
                              top: MediaQuery.of(context).size.height * 0.03),
                          child: CustomTextFiled(
                            validator: (password) {
                              if (password!.isEmpty) {
                                return "Please Fill This Filed";
                              } 
                              // else if (!RegExp(
                              //         r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~`)\%\-(_+=;:,.<>/?"[{\]}\|^]).{8,}$')
                              //     .hasMatch(password)) {
                              //   return "Please Enter Valid Email";
                              // }
                              return null;
                            },
                            hintText: "Confirm Password",
                            controller: _confirm,
                            keyboardType: TextInputType.text,
                            obscureText: true,
                          ),
                        ),
                      ],
                    ),
                  ),
                 !signUpRequired? Padding(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.03),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.75,
                      child: CustomElevatedButton(
                          text: "Sign Up",
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              if (_password.text == _confirm.text) {
                                print("Sign up confirmed password");
                                MealUser user = MealUser.empty;
                                user.copyWith(
                                  name: _name.text,
                                  email: _email.text,
                                  phone: _mobile.text,
                                  address: _address.text,
                                );
                                setState(() {
                                  context.read<SignUpBloc>().add(
                                      SignUpRequired(user, _password.text));
                                });
                              } else {}
                            }
                          },
                          color: MealColors.orange,
                          textColor: MealColors.white,
                          fontSize: 16,
                          borderColor: MealColors.orange,
                          hasIcon: false),
                    ),
                  ): const CircularProgressIndicator(),
                  Padding(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.055,
                        bottom: MediaQuery.of(context).size.height * 0.02),
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height * 0.05,
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Already have an Account?",
                            textAlign: TextAlign.end,
                            style: TextStyle(
                                fontSize: 14, color: MealColors.secondaryFont),
                          ),
                          TextButton(
                                     onPressed: (){

                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context)=> BlocProvider<SignInBloc>(create:
                      (context)=>SignInBloc(
                      userRepository: context.read<AuthenticationBloc>().userRepository
                     ) ,
                     child: const Login(),
                       ))
                    );      
                },
                              child: const Text(
                                "Login",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    color: MealColors.orange, fontSize: 14),
                              ))
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}

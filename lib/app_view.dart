import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meal_monkey/blocs/authentication_bloc/authentication_bloc.dart';
import 'package:meal_monkey/navigation/home_page.dart';
import 'package:meal_monkey/utils/Routes/meal_router.dart';
import 'package:meal_monkey/welcome/welcome_page_i.dart';
import 'package:meal_monkey/welcome/welcome_page_ii.dart';

class AppView extends StatelessWidget {
  const AppView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: MealRouter.onGenerateRoute,
      home: BlocBuilder<AuthenticationBloc, AuthenticationState>(
        builder:(context,state){
          if(state.status == AuthenticationStatus.authenticated){
            
            return const HomePage();
          }else{
            return  const WelcomePageI();
          }
        } ,),
    );
  }
}
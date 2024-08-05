import 'package:firebase_auth/firebase_auth.dart';
import 'package:user_repository/src/models/user.dart';

abstract class UserRepository{
  Stream <User?> get user; 

  Future <MealUser> signUp(MealUser mealUser, String password);

  Future <void> setUserData(MealUser user);

  Future <void> signIn(String email, String password);
   Future<void> logOut();

  // here we will add the reset password, reload profile image, and signout methods
}
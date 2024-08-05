part of 'meal_user_bloc.dart';

sealed class MealUserState extends Equatable {
  const MealUserState();
  
  @override
  List<Object> get props => [];
}

final class MealUserInitial extends MealUserState {}

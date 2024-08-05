import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'meal_user_event.dart';
part 'meal_user_state.dart';

class MealUserBloc extends Bloc<MealUserEvent, MealUserState> {
  MealUserBloc() : super(MealUserInitial()) {
    on<MealUserEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}

// ignore_for_file: file_names

import 'package:bloc/bloc.dart';

import 'CalorieEvent.dart';
import 'CalorieState.dart';

class CalorieBloc extends Bloc<CalorieEvent, CalorieState> {
  CalorieBloc() : super(CalorieState(calorieIntake: 0, calorieBurned: 0));

  @override
  Stream<CalorieState> mapEventToState(CalorieEvent event) async* {
    if (event is AddCalorieEvent) {
      int newCalorieIntake = state.calorieIntake + event.calories;
      yield CalorieState(
          calorieIntake: newCalorieIntake, calorieBurned: state.calorieBurned);
    } else if (event is SubtractCalorieEvent) {
      int newCalorieBurned = state.calorieBurned + event.calories;
      yield CalorieState(
          calorieIntake: state.calorieIntake, calorieBurned: newCalorieBurned);
    }
  }
}

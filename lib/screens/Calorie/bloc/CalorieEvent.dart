// ignore_for_file: file_names

abstract class CalorieEvent {}

class AddCalorieEvent extends CalorieEvent {
  final int calories;

  AddCalorieEvent({required this.calories});
}

class SubtractCalorieEvent extends CalorieEvent {
  final int calories;

  SubtractCalorieEvent({required this.calories});
}

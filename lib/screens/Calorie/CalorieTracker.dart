// ignore_for_file: file_names

// ignore: unnecessary_import
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uzima/screens/Calorie/bloc/CalorieBloc.dart';
import 'package:uzima/screens/Calorie/bloc/CalorieEvent.dart';
import 'package:uzima/screens/Calorie/bloc/CalorieState.dart';

class CalorieTracker extends StatelessWidget {
  final CalorieBloc calorieBloc;

  const CalorieTracker({Key? key, required this.calorieBloc}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CalorieBloc, CalorieState>(
      bloc: calorieBloc,
      builder: (context, state) {
        return Column(
          children: [
            Text("Calorie Intake: ${state.calorieIntake}"),
            Text("Calorie Burned: ${state.calorieBurned}"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    calorieBloc.add(AddCalorieEvent(calories: 100));
                  },
                  child: const Text("Add 100 calories"),
                ),
                ElevatedButton(
                  onPressed: () {
                    calorieBloc.add(SubtractCalorieEvent(calories: 100));
                  },
                  child: const Text("Burn 100 calories"),
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}

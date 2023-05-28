// ignore_for_file: prefer_interpolation_to_compose_strings

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uzima/core/const/path_constants.dart';
import 'package:uzima/core/const/text_constants.dart';
import 'package:uzima/data/workout_data.dart';
import 'package:uzima/screens/workout_details_screen/widget/panel/exercises_list.dart';
import 'package:uzima/screens/workout_details_screen/widget/panel/workout_tag.dart';
import 'package:flutter/material.dart';

import '../../bloc/workout_details_bloc.dart';

class WorkoutDetailsPanel extends StatelessWidget {
  final WorkoutData workout;

  const WorkoutDetailsPanel({super.key, required this.workout});

  @override
  Widget build(BuildContext context) {
    return _createPanelData(context);
  }

  Widget _createPanelData(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 15),
        _createRectangle(),
        const SizedBox(height: 15),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _createHeader(),
              const SizedBox(height: 20),
              _createWorkoutData(context),
              const SizedBox(height: 20),
              _createExerciesList(),
            ],
          ),
        ),
      ],
    );
  }

  Widget _createRectangle() {
    return const Image(image: AssetImage(PathConstants.rectangle));
  }

  Widget _createHeader() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Text(
        workout.title! + "  " + TextConstants.workout,
        style: const TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _createWorkoutData(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          WorkoutTag(
            icon: PathConstants.timeTracker,
            content: "${_getExerciseTime()}:00",
          ),
          const SizedBox(width: 15),
          WorkoutTag(
            icon: PathConstants.exerciseTracker,
            content:
                '${workout.exerciseDataList!.length} ${TextConstants.exercisesLowercase}',
          ),
        ],
      ),
    );
  }

  Widget _createExerciesList() {
    return BlocBuilder<WorkoutDetailsBloc, WorkoutDetailsState>(
      buildWhen: (_, currState) => currState is ReloadWorkoutDetailsState,
      builder: (context, state) {
        return Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ExercisesList(
              exercises: workout.exerciseDataList ?? [],
              workout: workout,
            ),
          ),
        );
      },
    );
  }

  int _getExerciseTime() {
    int time = 0;
    final List<int?> exerciseList =
        workout.exerciseDataList!.map((e) => e.minutes).toList();
    for (var e in exerciseList) {
      time += e!;
    }
    return time;
  }
}

import 'package:uzima/screens/workout_details_screen/page/workout_details_page.dart';
import 'package:uzima/screens/workouts/bloc/workouts_bloc.dart';
import 'package:uzima/screens/workouts/widget/workout_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WorkoutsPage extends StatelessWidget {
  const WorkoutsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: _buildContext(context));
  }

  BlocProvider<WorkoutsBloc> _buildContext(BuildContext context) {
    return BlocProvider<WorkoutsBloc>(
      create: (context) => WorkoutsBloc(),
      child: BlocConsumer<WorkoutsBloc, WorkoutsState>(
          buildWhen: (_, currState) => currState is WorkoutsInitial,
          builder: (context, state) {
            final bloc = BlocProvider.of<WorkoutsBloc>(context);
            bloc.add(WorkoutsInitialEvent());
            return const WorkoutContent();
          },
          listener: (context, state) async {
            if (state is CardTappedState) {
              final workoutsBloc = BlocProvider.of<WorkoutsBloc>(context);
              await Navigator.of(context, rootNavigator: true).push(
                MaterialPageRoute(
                  builder: (_) => WorkoutDetailsPage(workout: state.workout),
                ),
              );
              workoutsBloc.add(WorkoutsInitialEvent());
            }
          }),
    );
  }
}

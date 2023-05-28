// ignore_for_file: sort_child_properties_last, use_build_context_synchronously, prefer_typing_uninitialized_variables, unnecessary_null_in_if_null_operators

import 'package:firebase_auth/firebase_auth.dart';
import 'package:uzima/core/const/color_constants.dart';
import 'package:uzima/core/const/data_constants.dart';
import 'package:uzima/core/const/path_constants.dart';
import 'package:uzima/core/const/text_constants.dart';
import 'package:uzima/data/workout_data.dart';
import 'package:uzima/screens/common_widgets/fitness_button.dart';
import 'package:uzima/screens/edit_account/edit_account_screen.dart';
import 'package:uzima/screens/home/bloc/home_bloc.dart';
import 'package:uzima/screens/home/widget/home_statistics.dart';
import 'package:uzima/screens/tab_bar/bloc/tab_bar_bloc.dart';
import 'package:uzima/screens/workout_details_screen/page/workout_details_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'home_exercises_card.dart';

class HomeContent extends StatelessWidget {
  final List<WorkoutData> workouts;

  const HomeContent({
    required this.workouts,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorConstants.homeBackgroundColor,
      height: double.infinity,
      width: double.infinity,
      child: _createHomeBody(context),
    );
  }

  Widget _createHomeBody(BuildContext context) {
    final bloc = BlocProvider.of<HomeBloc>(context);
    return SafeArea(
      child: ListView(
        padding: const EdgeInsets.symmetric(vertical: 20),
        children: [
          _createProfileData(context),
          const SizedBox(height: 10),
          _showStartWorkout(context, bloc),
          const SizedBox(height: 10),
          _healthyDiets(context, bloc),
          const SizedBox(height: 10),
          _createExercisesList(context),
          const SizedBox(height: 10),
          _showProgress(bloc),
          const SizedBox(height: 10),
        ],
      ),
    );
  }

  Widget _createExercisesList(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            TextConstants.discoverWorkouts,
            style: TextStyle(
              color: ColorConstants.textBlack,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(height: 15),
        SizedBox(
          height: 160,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              const SizedBox(width: 20),
              WorkoutCard(
                  color: ColorConstants.cardioColor,
                  workout: DataConstants.workouts[0],
                  onTap: () => Navigator.of(context).push(MaterialPageRoute(
                      builder: (_) => WorkoutDetailsPage(
                          workout: DataConstants.workouts[0])))),
              const SizedBox(width: 15),
              WorkoutCard(
                color: ColorConstants.armsColor,
                workout: DataConstants.workouts[2],
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => WorkoutDetailsPage(
                      workout: DataConstants.workouts[2],
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 20),
            ],
          ),
        ),
      ],
    );
  }

  Widget _createProfileData(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BlocBuilder<HomeBloc, HomeState>(
                buildWhen: (_, currState) =>
                    currState is ReloadDisplayNameState,
                builder: (context, state) {
                  final User? user = FirebaseAuth.instance.currentUser;
                  final displayName = user?.displayName ?? "No Username";
                  return Text(
                    '${greeting()}, $displayName',
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  );
                },
              ),
              const SizedBox(height: 2),
              const Text(
                TextConstants.checkActivity,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          BlocBuilder<HomeBloc, HomeState>(
            buildWhen: (_, currState) => currState is ReloadImageState,
            builder: (context, state) {
              final photoURL =
                  state is ReloadImageState ? state.photoURL : null;
              return GestureDetector(
                child: photoURL == null
                    ? const CircleAvatar(
                        backgroundImage: AssetImage(PathConstants.profile),
                        radius: 25)
                    : CircleAvatar(
                        child: ClipOval(
                            child: FadeInImage.assetNetwork(
                                placeholder: PathConstants.profile,
                                image: photoURL,
                                fit: BoxFit.cover,
                                width: 200,
                                height: 120)),
                        radius: 25),
                onTap: () async {
                  await Navigator.of(context).push(MaterialPageRoute(
                      builder: (_) => const EditAccountScreen()));
                  BlocProvider.of<HomeBloc>(context).add(ReloadImageEvent());
                },
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _showStartWorkout(BuildContext context, HomeBloc bloc) {
    return workouts.isEmpty
        ? _createStartWorkout(context, bloc)
        : const HomeStatistics();
  }

  Widget _createStartWorkout(BuildContext context, HomeBloc bloc) {
    final blocTabBar = BlocProvider.of<TabBarBloc>(context);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      margin: const EdgeInsets.symmetric(horizontal: 20),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: ColorConstants.white,
        boxShadow: [
          BoxShadow(
            color: ColorConstants.textBlack.withOpacity(0.12),
            blurRadius: 5.0,
            spreadRadius: 1.1,
          )
        ],
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Image(
                image: AssetImage(PathConstants.didYouKnow),
                width: 24,
                height: 24,
              ),
              SizedBox(width: 10),
              Text(TextConstants.didYouKnow,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500))
            ],
          ),
          const SizedBox(height: 16),
          const Text(TextConstants.sportActivity,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700)),
          const SizedBox(height: 4),
          const Text(TextConstants.clickToStart,
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: ColorConstants.textGrey)),
          const SizedBox(height: 24),
          FitnessButton(
            title: TextConstants.startWorkout,
            onTap: () {
              blocTabBar.add(
                  TabBarItemTappedEvent(index: blocTabBar.currentIndex = 2));
            },
          ),
        ],
      ),
    );
  }

  Widget _showProgress(HomeBloc bloc) {
    return workouts.isNotEmpty ? _createProgress(bloc) : Container();
  }

  Widget _createProgress(HomeBloc bloc) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: ColorConstants.white,
        boxShadow: [
          BoxShadow(
            color: ColorConstants.textBlack.withOpacity(0.12),
            blurRadius: 5.0,
            spreadRadius: 1.1,
          ),
        ],
      ),
      child: Row(
        children: [
          const Image(image: AssetImage(PathConstants.progress)),
          const SizedBox(width: 20),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(TextConstants.keepProgress,
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                const SizedBox(height: 3),
                Text(
                  '${TextConstants.profileSuccessful} ${bloc.getProgressPercentage()}% of workouts.',
                  style: const TextStyle(fontSize: 16),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _healthyDiets(BuildContext context, HomeBloc bloc) {
    final blocTabBar = BlocProvider.of<TabBarBloc>(context);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      margin: const EdgeInsets.symmetric(horizontal: 20),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: ColorConstants.white,
        boxShadow: [
          BoxShadow(
            color: ColorConstants.textBlack.withOpacity(0.12),
            blurRadius: 5.0,
            spreadRadius: 1.1,
          )
        ],
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Image(
                image: AssetImage(PathConstants.didYouKnow),
                width: 24,
                height: 24,
              ),
              SizedBox(width: 10),
              Text(TextConstants.didYouKnow,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500))
            ],
          ),
          const SizedBox(height: 16),
          const Text(TextConstants.eatMeals,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700)),
          const SizedBox(height: 4),
          const Text(TextConstants.clickToView,
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: ColorConstants.textGrey)),
          const SizedBox(height: 24),
          FitnessButton(
            title: TextConstants.openMeals,
            onTap: () {
              blocTabBar.add(
                  TabBarItemTappedEvent(index: blocTabBar.currentIndex = 1));
            },
          ),
        ],
      ),
    );
  }

  int getProgressPercentage() {
    final completed = workouts
        .where((w) =>
            (w.currentProgress ?? 0) > 0 && w.currentProgress == w.progress)
        .toList();
    final percent01 =
        completed.length.toDouble() / DataConstants.workouts.length.toDouble();
    final percent = (percent01 * 100).toInt();
    return percent;
  }

  String greeting() {
    var hour = DateTime.now().hour;
    if (hour < 12) {
      return "Good Morning";
    }
    if (hour < 17) {
      return "Good Afternoon";
    }
    return "Good Evening";
  }
}

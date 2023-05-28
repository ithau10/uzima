import 'package:flutter/material.dart';
import 'dart:math';
import 'meals.dart';

class MealDetailScreen extends StatelessWidget {
  final Meal meal;

  const MealDetailScreen({Key? key, required this.meal}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        // Generate random motivational message
        final motivationalMessages = [
          "You can do anything you set your mind to!",
          "Believe in yourself and all that you are. Know that there is something inside you that is greater than any obstacle.",
          "Success is not final, failure is not fatal: It is the courage to continue that counts.",
          "Believe you can and you're halfway there.",
          "The only way to do great work is to love what you do.",
          "You are never too old to set another goal or to dream a new dream.",
          "Don't watch the clock; do what it does. Keep going.",
          "Every healthy meal is a step towards a healthier you.",
          "Believe in yourself and your ability to make healthy choices.",
          "Your body is a temple, treat it with respect and nourish it with healthy food.",
          "A healthy diet is a lifestyle, not a temporary fix.",
          "Small steps lead to big results. Keep making healthy choices.",
          "Fuel your body with healthy food and feel the difference.",
          "Success is the sum of small efforts repeated every day. Keep making healthy choices.",
          "Healthy eating is a form of self-care. Take care of yourself.",
          "You are what you eat, so choose wisely.",
          "The journey to a healthier you starts with one healthy meal at a time.",
          "Eat to fuel your body, not to feed your emotions.",
          "You are what you eat, so choose wisely.",
          "Eat for the body you want, not the body you have.",
          "Good food choices are good investments for your health.",
          "Eat clean, train dirty.",
          "Food is not just fuel, it's information. It talks to your DNA and tells it what to do.",
          "Healthy food is not a punishment, it's a reward.",
          "Food is the most powerful medicine we have, choose wisely.",
          "Eating well is a form of self-respect.",
          "Nourish your body, mind, and soul with good food.",
        ];
        final random = Random();
        final index = random.nextInt(motivationalMessages.length);
        final motivationalMessage = motivationalMessages[index];

        // Show AlertDialog with motivational message
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: const Text("Uzima Message"),
              content: Text(motivationalMessage),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                    Navigator.of(context).pop();
                  },
                  child: const Text("OK"),
                ),
              ],
            );
          },
        );

        // Prevent screen from popping immediately
        return false;
      },

      // ignore: avoid_unnecessary_containers
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFFE9E9E9),
              Color(0xFFC9C9C9),
            ],
          ),
        ),
        child: Scaffold(
          backgroundColor: const Color(0xFFE9E9E9),
          body: CustomScrollView(
            slivers: <Widget>[
              SliverAppBar(
                snap: true,
                floating: true,
                backgroundColor: const Color(0xFF200087),
                expandedHeight: 300,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(40))),
                flexibleSpace: FlexibleSpaceBar(
                  background: ClipRRect(
                    borderRadius: const BorderRadius.vertical(
                        bottom: Radius.circular(40)),
                    child: Image.asset(
                      meal.image_path,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    const SizedBox(
                      height: 20,
                    ),
                    ListTile(
                      title: Text(
                        meal.meal_time.toUpperCase(),
                        style: const TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 14,
                          color: Colors.blueGrey,
                        ),
                      ),
                      subtitle: Text(
                        meal.name,
                        style: const TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 24,
                          color: Colors.black,
                        ),
                      ),
                      trailing: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              const SizedBox(
                                width: 30,
                              ),
                              Text(
                                "${meal.kilo_calories_burnt} kcal",
                                style: const TextStyle(
                                    fontSize: 10.0,
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromARGB(255, 38, 81, 102)),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              const Icon(
                                Icons.access_time,
                                color: Color.fromARGB(255, 0, 255, 8),
                                size: 12.0,
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                "${meal.time_taken} mins",
                                style: const TextStyle(
                                    fontSize: 8.0,
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromARGB(255, 38, 81, 102)),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Text(
                        "INGREDIENTS",
                        style: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 14,
                          color: Colors.blueGrey,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          for (int i = 0; i < meal.ingredients.length; i++)
                            Padding(
                              padding: const EdgeInsets.only(bottom: 6),
                              child: Text(
                                meal.ingredients[i],
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Text(
                        "PREPARATION",
                        style: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 14,
                          color: Colors.blueGrey,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 16, right: 16, bottom: 32),
                      child: Text(
                        meal.preparation,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

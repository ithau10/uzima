// ignore_for_file: file_names, prefer_const_literals_to_create_immutables, prefer_const_constructors, sized_box_for_whitespace, unused_element, unused_local_variable, prefer_typing_uninitialized_variables, camel_case_types, avoid_print
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:animations/animations.dart';
import 'package:uzima/screens/Diet/meal_detail.dart';
import 'package:vector_math/vector_math_64.dart' as math;
import 'meals.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:intl/intl.dart';

class mealsContent extends StatelessWidget {
  const mealsContent({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final date = DateTime.now();
    DateTime now = DateTime.now();
    String weekday = DateFormat('EEEE').format(now);
    return Scaffold(
      backgroundColor: const Color(0XFFF3E5F5),
      body: Stack(
        children: <Widget>[
          Positioned(
            top: 0,
            height: height * 0.26,
            left: 0,
            right: 0,
            child: ClipRRect(
              borderRadius:
                  const BorderRadius.vertical(bottom: Radius.circular(15)),
              child: Container(
                color: Colors.white,
                padding:
                    EdgeInsets.only(top: 30, bottom: 10, left: 32, right: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        _RadialProgress(
                          height: height * .165,
                          width: height * .165,
                          progress: .7,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _IngredientProgress(
                              ingredient: "Protein",
                              progress: 0.5,
                              progressColor: Colors.green,
                              leftAmount: 77,
                              width: width * 0.5,
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            _IngredientProgress(
                              ingredient: "Carbs",
                              progress: 0.2,
                              progressColor: Colors.red,
                              leftAmount: 252,
                              width: width * 0.5,
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            _IngredientProgress(
                              ingredient: "Fat",
                              progress: 0.1,
                              progressColor: Colors.yellow,
                              leftAmount: 61,
                              width: width * 0.5,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: height * .28, //the height from the top
            left: 0,
            right: 0,
            child: Container(
              height: height * .63, //the height from the top
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Padding(
                    padding:
                        const EdgeInsets.only(bottom: 0.0, left: 30, right: 15),
                    child: Text(
                      "$weekday's Meals",
                      style: GoogleFonts.bebasNeue(
                        fontWeight: FontWeight.w400,
                        color: Color.fromARGB(255, 43, 43, 43),
                        fontSize: 22,
                      ),
                    ),
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: <Widget>[
                          SizedBox(
                            width: 60,
                          ),
                          DayMeals(), // Use a separate widget to return the result of the switch statement
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),

                  Expanded(
                      child: Container(
                          margin:
                              EdgeInsets.only(bottom: 20, left: 30, right: 30),
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.elliptical(20, 10))),
                          child: MealScroll())),

                  // Expanded(
                  //     child: ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class _MealProgress extends StatelessWidget {
  final double progress;

  const _MealProgress({Key? key, required this.progress}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 16,
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Stack(
        children: [
          Container(
            height: double.infinity,
            width: progress * MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              width: 50,
              height: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.horizontal(
                  left: Radius.circular(10),
                ),
              ),
              child: Center(
                child: Text(
                  '${(progress * 100).toInt()}%',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class DayMeals extends StatelessWidget {
  const DayMeals({super.key});

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String weekday = DateFormat('EEEE').format(now);

    switch (weekday) {
      case 'Monday':
        return Row(
          children: [
            _MealCard(meal: meals[0]),
            _MealCard(meal: meals[1]),
            _MealCard(meal: meals[2]),
            _MealCard(meal: meals[3]),
          ],
        );
      case 'Tuesday':
        return Row(
          children: [
            _MealCard(meal: meals[4]),
            _MealCard(meal: meals[5]),
            _MealCard(meal: meals[6]),
            _MealCard(meal: meals[7]),
          ],
        );
      case 'Wednesday':
        return Row(
          children: [
            _MealCard(meal: meals[8]),
            _MealCard(meal: meals[9]),
            _MealCard(meal: meals[10]),
          ],
        );
      case 'Thursday':
        return Row(
          children: [
            _MealCard(meal: meals[11]),
            _MealCard(meal: meals[12]),
            _MealCard(meal: meals[13]),
            _MealCard(meal: meals[14]),
          ],
        );
      case 'Friday':
        return Row(
          children: [
            _MealCard(meal: meals[15]),
            _MealCard(meal: meals[16]),
            _MealCard(meal: meals[17]),
            _MealCard(meal: meals[18]),
          ],
        );
      case 'Saturday':
        return Row(
          children: [
            _MealCard(meal: meals[19]),
            _MealCard(meal: meals[20]),
            _MealCard(meal: meals[21]),
          ],
        );
      case 'Sunday':
        return Row(
          children: [
            _MealCard(meal: meals[22]),
            _MealCard(meal: meals[23]),
            _MealCard(meal: meals[24]),
            _MealCard(meal: meals[25]),
          ],
        );
      default:
        return Container(); // or some default behavior
    }
  }
}

class WaterIntakeTracker extends StatefulWidget {
  const WaterIntakeTracker({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _WaterIntakeTrackerState createState() => _WaterIntakeTrackerState();
}

class _WaterIntakeTrackerState extends State<WaterIntakeTracker> {
  int _currentIntake = 0;

  void _incrementIntake() {
    setState(() {
      _currentIntake++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Water Intake Tracker'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Current Water Intake:',
              style: TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 10),
            Text(
              '$_currentIntake cups',
              style: const TextStyle(fontSize: 36),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                _incrementIntake();
              },
              child: const Text('Add a Cup'),
            ),
          ],
        ),
      ),
    );
  }
}

class _IngredientProgress extends StatelessWidget {
  final String ingredient;
  final int leftAmount;
  final double progress, width;
  final Color progressColor;

  const _IngredientProgress(
      {Key? key,
      required this.ingredient,
      required this.leftAmount,
      required this.progress,
      required this.progressColor,
      required this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          ingredient.toUpperCase(),
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w700,
          ),
        ),
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  height: 10,
                  width: width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    color: Colors.black12,
                  ),
                ),
                Container(
                  height: 10,
                  width: width * progress,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    color: progressColor,
                  ),
                )
              ],
            ),
            SizedBox(
              width: 10,
            ),
            Text("${leftAmount}g left"),
          ],
        ),
      ],
    );
  }
}

class _RadialProgress extends StatelessWidget {
  final double height, width, progress;

  const _RadialProgress(
      {Key? key,
      required this.height,
      required this.width,
      required this.progress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: _RadialPainter(progress: 0.75),
      child: Container(
        width: width,
        height: height,
        child: Center(
          child: RichText(
            text: TextSpan(children: [
              TextSpan(
                  text: "1624",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                    color: Colors.black87,
                  )),
              TextSpan(text: "\n"),
              TextSpan(
                  text: "kcal left",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                    color: Color.fromARGB(96, 80, 8, 57),
                  ))
            ]),
          ),
        ),
      ),
    );
  }
}

class _RadialPainter extends CustomPainter {
  final double progress;

  _RadialPainter({required this.progress});
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..strokeWidth = 10
      ..color = Color.fromARGB(157, 66, 11, 135)
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    Offset center = Offset(size.width / 2, size.height / 2);
    double relativeProgress = 360 * progress;
    canvas.drawArc(Rect.fromCircle(center: center, radius: size.width / 2),
        math.radians(-90), math.radians(-relativeProgress), false, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    throw UnimplementedError();
  }
}

class MealScroll extends StatefulWidget {
  const MealScroll({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MealScrollState createState() => _MealScrollState();
}

class _MealScrollState extends State<MealScroll>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _offsetAnimation;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(duration: Duration(seconds: 2), vsync: this);
    _offsetAnimation = Tween<Offset>(begin: Offset.zero, end: Offset(0.0, 0.08))
        .animate(
            CurvedAnimation(parent: _controller, curve: Curves.easeInOutCirc))
      ..addListener(() {
        setState(() {});
      });
    _controller.repeat(reverse: true);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _offsetAnimation,
      child: ImageSlideshow(
        width: double.infinity,
        height: 200,
        initialPage: 0,
        indicatorBackgroundColor: Colors.grey,
        onPageChanged: (value) {
          print('Page changed :$value');
        },
        autoPlayInterval: 2000,
        isLoop: true,
        children: [
          Image.asset(
            "assets/images/dietScroll/pineapple.png",
            fit: BoxFit.cover,
          ),
          Image.asset(
            "assets/images/dietScroll/snack1.png",
            fit: BoxFit.cover,
          ),
          Image.asset(
            "assets/images/dietScroll/snack2.png",
            fit: BoxFit.cover,
          ),
          Image.asset(
            "assets/images/dietScroll/lobstar.png",
            fit: BoxFit.cover,
          ),
          Image.asset(
            "assets/images/dietScroll/pasta.jpg",
            fit: BoxFit.cover,
          ),
          Image.asset(
            "assets/images/dietScroll/humberger.png",
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}

class _MealCard extends StatelessWidget {
  final Meal meal;

  const _MealCard({Key? key, required this.meal}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        right: 20,
        bottom: 10,
      ),
      child: Material(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        elevation: 4,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Flexible(
              fit: FlexFit.tight,
              child: OpenContainer(
                closedShape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                transitionDuration: const Duration(milliseconds: 1000),
                openBuilder: (context, _) {
                  return MealDetailScreen(
                    meal: meal,
                  );
                },
                closedBuilder: (context, openContainer) {
                  return GestureDetector(
                    onTap: openContainer,
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      child: Image.asset(
                        meal.image_path,
                        width: 150,
                        fit: BoxFit.fill,
                      ),
                    ),
                  );
                },
              ),
            ),
            Flexible(
                fit: FlexFit.tight,
                child: Padding(
                  padding: const EdgeInsets.only(left: 13.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 13,
                      ),
                      Text(
                        meal.meal_time,
                        style: GoogleFonts.lato(
                            fontSize: 10.0,
                            fontWeight: FontWeight.w600,
                            color: Color.fromARGB(255, 38, 81, 102)),
                      ),
                      Text(
                        meal.name,
                        style: GoogleFonts.lato(
                            fontSize: 8.0,
                            fontWeight: FontWeight.w900,
                            color: Color.fromARGB(255, 0, 0, 0)),
                      ),
                      Text(
                        "${meal.kilo_calories_burnt}kcal",
                        style: GoogleFonts.lato(
                            fontSize: 10.0,
                            fontWeight: FontWeight.w600,
                            color: Color.fromARGB(255, 38, 81, 102)),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.access_time,
                            color: Color.fromARGB(255, 0, 255, 8),
                            size: 12.0,
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Text(
                            "${meal.time_taken}mins",
                            style: GoogleFonts.lato(
                                fontSize: 8.0,
                                fontWeight: FontWeight.w600,
                                color: Color.fromARGB(255, 38, 81, 102)),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Expanded(
                        child: Container(
                          margin:
                              EdgeInsets.only(bottom: 8, left: 30, right: 30),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [Color.fromARGB(255, 38, 81, 102)]),
                          ),
                        ),
                      ),
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}

List<int> kiloCaloriesBurnt = [
  meals[0].kilo_calories_burnt,
  meals[1].kilo_calories_burnt,
  meals[2].kilo_calories_burnt,
  meals[3].kilo_calories_burnt,
  meals[4].kilo_calories_burnt,
  meals[5].kilo_calories_burnt,
  meals[6].kilo_calories_burnt,
  meals[7].kilo_calories_burnt,
  meals[8].kilo_calories_burnt,
  meals[9].kilo_calories_burnt,
  meals[10].kilo_calories_burnt,
  meals[11].kilo_calories_burnt,
  meals[12].kilo_calories_burnt,
  meals[13].kilo_calories_burnt,
  meals[14].kilo_calories_burnt,
  meals[15].kilo_calories_burnt,
  meals[16].kilo_calories_burnt,
  meals[17].kilo_calories_burnt,
  meals[18].kilo_calories_burnt,
  meals[19].kilo_calories_burnt,
  meals[20].kilo_calories_burnt,
  meals[21].kilo_calories_burnt,
  meals[22].kilo_calories_burnt,
  meals[23].kilo_calories_burnt,
  meals[24].kilo_calories_burnt,
  meals[25].kilo_calories_burnt,
];

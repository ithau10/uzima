// ignore_for_file: unused_import, unnecessary_new, library_private_types_in_public_api, unnecessary_late, prefer_const_declarations, depend_on_referenced_packages

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:uzima/screens/onboarding/page/onboarding_page.dart';
import 'package:uzima/screens/tab_bar/page/tab_bar_page.dart';
import 'package:timezone/data/latest.dart' as tz;
import 'core/const/color_constants.dart';
import 'core/const/global_constants.dart';
import 'core/service/notification_service.dart';
import 'data/user_data.dart';

void main() async {
  // async -->lets the program to complete working as it waits for another program to get finished
  WidgetsFlutterBinding.ensureInitialized();
  // it is the glue that binds the framework to Flutter framework

  SystemChrome.setPreferredOrientations([
    // it makes sure that the app wont turn when the user moves the device around 90
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: "AIzaSyAbI9NAx0YhnLTD53SZG4zqp6LY-ohU6zg",
          appId: "1:125345932330:web:28bbf0a8b2bca215b78f53",
          messagingSenderId: "125345932330",
          projectId: "uzima-5d64a"));

  // await-->  it interupts the process flow until the asyc method completes
  runApp(const MyApp());
  // runapp -->is used to initialize and run the app
}
// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   SystemChrome.setPreferredOrientations(
//       [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
//   await Firebase.initializeApp();

//   // await-->  it interupts the process flow until the asyc method completes
//   runApp(const MyApp());
//   // runapp -->is used to initialize and run the app
// }

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State {
  final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  @override
  initState() {
    super.initState();
    const AndroidInitializationSettings initializationSettingsAndroid =
        AndroidInitializationSettings('app_icon');
    final InitializationSettings initializationSettings =
        // ignore: prefer_const_constructors
        InitializationSettings(android: initializationSettingsAndroid);

    tz.initializeTimeZones();

    flutterLocalNotificationsPlugin.initialize(initializationSettings,
        onSelectNotification: selectNotification);
  }

  @override
  Widget build(BuildContext context) {
    final currUser = FirebaseAuth.instance.currentUser;
    final isLoggedIn = currUser != null;
    if (isLoggedIn) {
      GlobalConstants.currentUser = UserData.fromFirebase(currUser);
    }
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Uzima',
      theme: ThemeData(
        textTheme:
            // ignore: deprecated_member_use
            const TextTheme(
                // ignore: deprecated_member_use
                bodyText1: TextStyle(color: ColorConstants.textColor)),
        fontFamily: 'NotoSansKR',
        scaffoldBackgroundColor: Colors.white,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: isLoggedIn ? const TabBarPage() : const OnboardingPage(),
    );
  }

  Future selectNotification(String? payload) async {
    showDialog(
      context: context,
      builder: (_) {
        return new AlertDialog(
          title: const Text("PayLoad"),
          content: Text("Payload : $payload"),
        );
      },
    );
  }
}

// void main() async {
//   // async -->lets the program to complete working as it waits for another program to get finished
//   WidgetsFlutterBinding.ensureInitialized();
//   // it is the glue that binds the framework to Flutter framework

//   SystemChrome.setPreferredOrientations([
//     // it makes sure that the app wont turn when the user moves the device around 90
//     DeviceOrientation.portraitUp,
//     DeviceOrientation.portraitDown,
//   ]);

//   await Firebase.initializeApp(
//       options: const FirebaseOptions(
//           apiKey: "AIzaSyAbI9NAx0YhnLTD53SZG4zqp6LY-ohU6zg",
//           appId: "1:125345932330:web:28bbf0a8b2bca215b78f53",
//           messagingSenderId: "125345932330",
//           projectId: "uzima-5d64a"));
// // void main() async {
// //   WidgetsFlutterBinding.ensureInitialized();
// //   SystemChrome.setPreferredOrientations(
// //       [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
// //   await Firebase.initializeApp();

//   // await-->  it interupts the process flow until the asyc method completes
//   runApp(const MyApp());
//   // runapp -->is used to initialize and run the app
// }

// class MyApp extends StatefulWidget {
//   const MyApp({super.key});

//   @override
//   _MyAppState createState() => new _MyAppState();
// }

// class _MyAppState extends State {
//   static late FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
//       NotificationService.flutterLocalNotificationsPlugin;

//   @override
//   initState() {
//     super.initState();
//     const AndroidInitializationSettings initializationSettingsAndroid =
//         AndroidInitializationSettings('app_icon');
//     final IOSInitializationSettings initializationSettingsIOS =
//         const IOSInitializationSettings();
//     final InitializationSettings initializationSettings =
//         InitializationSettings(
//             android: initializationSettingsAndroid,
//             iOS: initializationSettingsIOS);

//     tz.initializeTimeZones();

//     flutterLocalNotificationsPlugin.initialize(initializationSettings,
//         onSelectNotification: selectNotification);
//   }

//   @override
//   Widget build(BuildContext context) {
//     final currUser = FirebaseAuth.instance.currentUser;
//     final isLoggedIn = currUser != null;
//     if (isLoggedIn) {
//       GlobalConstants.currentUser = UserData.fromFirebase(currUser);
//     }
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'UZIMA',
//       theme: ThemeData(
//         textTheme: const TextTheme(
//             bodyLarge: TextStyle(color: ColorConstants.textColor)),
//         fontFamily: 'NotoSansKR',
//         scaffoldBackgroundColor: Colors.white,
//         visualDensity: VisualDensity.adaptivePlatformDensity,
//       ),
//       home: isLoggedIn ? const TabBarPage() : const OnboardingPage(),
//     );
//   }

//   Future selectNotification(String? payload) async {
//     showDialog(
//       context: context,
//       builder: (_) {
//         return new AlertDialog(
//           title: const Text("PayLoad"),
//           content: Text("Payload : $payload"),
//         );
//       },
//     );
//   }
// }

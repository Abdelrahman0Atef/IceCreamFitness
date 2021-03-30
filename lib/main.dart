import 'package:flutter/material.dart';
import 'Screen/WelcomePage.dart';
import 'Screen/WorkoutAPage.dart';
import 'Screen/WorkoutBPage.dart';
import 'Component/ExercisePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => WelcomePage(),
        '/workoutA': (context) => WorkoutAPage(),
        '/workoutB': (context) => WorkoutBPage(),
        '/exercise': (context) => ExercisePage(),
      },
    );
  }
}

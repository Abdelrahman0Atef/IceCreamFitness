import 'package:flutter/material.dart';
import 'package:icecreamfitness/Component/ExerciseButton.dart';
import 'package:icecreamfitness/Component/ExercisePage.dart';

class WorkoutBPage extends StatefulWidget {
  @override
  _WorkoutBPageState createState() => _WorkoutBPageState();
}

class _WorkoutBPageState extends State<WorkoutBPage> {
  showDialogFunc(context, img, desc) {
    return showDialog(
      context: context,
      builder: (context) {
        return ExercisePage(
          img: img,
          desc: desc,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Exercise',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
        backgroundColor: Color(0xFF1E2025),
      ),
      backgroundColor: Color(0x15151B),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 5),
            ExerciseButton(
                onPress: () {
                  showDialogFunc(context, 'squat.gif',
                      'Glutes & Hip Flexors, Quadriceps, Abs, Calves, Hamstrings, Lower Back');
                },
                text: 'Squat Barbell'),
            ExerciseButton(
                onPress: () {
                  showDialogFunc(context, 'deadlift.gif',
                      'Lower Back, Abs, Calves, Forearms, Glutes, Hip Flexors, Hamstrings, Quadriceps');
                },
                text: 'Deadlift Barbell'),
            ExerciseButton(
                onPress: () {
                  showDialogFunc(
                      context, 'overhead_press.gif', 'Shoulders, Abs');
                },
                text: 'Over Head Press'),
            ExerciseButton(
                onPress: () {
                  showDialogFunc(context, 'bent_over_row.gif',
                      'Lower Back, Middle Back, Lats');
                },
                text: 'Bent Over Row'),
            ExerciseButton(
                onPress: () {
                  showDialogFunc(context, 'Close_Grip_Bench_Press.gif',
                      'Chest, Triceps, Shoulders');
                },
                text: 'Close Grip Press'),
            ExerciseButton(
                onPress: () {
                  showDialogFunc(
                      context, 'barbell_curl.gif', 'Biceps, Forearms');
                },
                text: 'Barbell Curl'),
            ExerciseButton(
                onPress: () {
                  showDialogFunc(context, 'resistance_band_chest_fly.gif',
                      'Chest, Shoulders, Triceps');
                },
                text: 'Resistance Band Chest Fly'),
            ExerciseButton(
                onPress: () {
                  showDialogFunc(context, 'seated_band_rows.gif',
                      'Lower Back, Biceps, Shoulders, Upper Back, Lower Traps');
                },
                text: 'Seated Band Rows'),
            ExerciseButton(
                onPress: () {
                  showDialogFunc(context, 'cycling_crunches.gif',
                      'Abs, Obliques, Glutes, Hip Flexors, Quadriceps');
                },
                text: 'Cycling Crunches'),
          ],
        ),
      ),
    );
  }
}

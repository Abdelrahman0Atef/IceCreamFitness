import 'package:flutter/material.dart';
import 'package:icecreamfitness/Component/ExerciseButton.dart';
import 'package:icecreamfitness/Component/ExercisePage.dart';

class WorkoutAPage extends StatefulWidget {
  @override
  _WorkoutAPageState createState() => _WorkoutAPageState();
}

class _WorkoutAPageState extends State<WorkoutAPage> {
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
                      'Glutes, Hip Flexors, Quadriceps, Abs, Calves, Hamstrings, Lower Back');
                },
                text: 'Squat Barbell'),
            ExerciseButton(
                onPress: () {
                  showDialogFunc(context, 'bench_press.gif',
                      'Chest, Abs, Shoulders, Triceps');
                },
                text: 'Flat Bench Press Barbell'),
            ExerciseButton(
                onPress: () {
                  showDialogFunc(context, 'bent_over_row.gif',
                      'Lower Back, Middle Back, Lats');
                },
                text: 'Bent Over Row'),
            ExerciseButton(
                onPress: () {
                  showDialogFunc(context, 'barbell_shrugs.gif',
                      'Neck & Upper Traps, Shoulders, Upper Back');
                },
                text: 'Barbell Shrugs'),
            ExerciseButton(
                onPress: () {
                  showDialogFunc(context, 'One_Arm_Dumbbell_Row.gif',
                      'Lower Back, Upper Back, Lower Traps');
                },
                text: 'One Arm Dumbbell Row'),
            ExerciseButton(
                onPress: () {
                  showDialogFunc(context, 'tricep_kick_back.gif',
                      'Triceps, Abs, Lower Back');
                },
                text: 'Tricep Kick Back'),
            ExerciseButton(
                onPress: () {
                  showDialogFunc(
                      context, 'barbell_curl.gif', 'Biceps, Forearms');
                },
                text: 'Barbell Curl'),
            ExerciseButton(
                onPress: () {
                  showDialogFunc(
                      context, 'bridge.gif', 'Glutes, Hip Flexors, Hamstrings');
                },
                text: 'Bridge'),
            ExerciseButton(
                onPress: () {
                  showDialogFunc(context, 'scissor_kick_crunch.gif',
                      'Abs, Obliques,Quadriceps');
                },
                text: 'Scissor Kick Crunch'),
          ],
        ),
      ),
    );
  }
}

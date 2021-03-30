import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExerciseButton extends StatelessWidget {
  ExerciseButton({
    this.onPress,
    @required this.text,
  });

  final String text;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onPress,
        child: Container(
            margin: EdgeInsets.symmetric(vertical: 0.5),
            padding: EdgeInsets.all(13),
            decoration: BoxDecoration(
                color: Color(0xFF2f3138),
                borderRadius: BorderRadius.circular(10)),
            child: Text(
              text,
              style: TextStyle(color: Colors.white60, fontSize: 25),
              textAlign: TextAlign.center,
            )),
      ),
    );
  }
}

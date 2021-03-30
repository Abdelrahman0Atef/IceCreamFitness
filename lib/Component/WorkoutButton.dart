import 'package:flutter/material.dart';

class WorkoutButton extends StatelessWidget {
  WorkoutButton(
      {@required this.onPress, @required this.text, @required this.textsize});

  final String text;
  final Function onPress;
  final double textsize;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: Text(
          text,
          style: TextStyle(
              color: Colors.white70,
              fontSize: textsize,
              fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        width: 125,
        height: 115,
        margin: EdgeInsets.symmetric(horizontal: 20),
        padding: EdgeInsets.only(top: 30, right: 3, left: 3),
        decoration: BoxDecoration(
            color: Color(0xFF2f3138), borderRadius: BorderRadius.circular(20)),
      ),
    );
  }
}

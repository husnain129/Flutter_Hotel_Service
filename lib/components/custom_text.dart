import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  CustomText({this.text, this.color, this.size, this.weight});
  final String text;
  final int color;
  final double size;
  final weight;
  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: TextStyle(
          decoration: TextDecoration.none,
          color: Color(color),
          fontSize: size,
          fontWeight: weight,
        ));
  }
}

import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  CustomText(this.text, this.tcolor, this.tsize, this.tweight);
  final String text;
  final int tcolor;
  final double tsize;
  final tweight;
  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: TextStyle(
            color: Color(tcolor), fontSize: tsize, fontWeight: tweight));
  }
}

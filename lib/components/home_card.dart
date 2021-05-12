import 'package:flutter/material.dart';
import 'package:hotel_service/components/card_content.dart';
import 'package:hotel_service/constant.dart';

class HomeCard extends StatelessWidget {
  HomeCard({@required this.imgURL});
  final imgURL;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 280.0,
      margin: EdgeInsets.only(bottom: 20.0),
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(imgURL),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(40.0),
        boxShadow: [KCardShadow],
      ),
      child: CardContent(),
    );
  }
}

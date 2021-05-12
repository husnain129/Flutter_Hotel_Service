import 'package:flutter/material.dart';
import 'package:hotel_service/components/home_card.dart';
import 'package:hotel_service/constant.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KBackgroundColor,
      body: Container(
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/6-rem.png'),
                    fit: BoxFit.cover,
                  ),
                ),
                width: double.infinity,
                padding: EdgeInsets.only(
                    top: 20.0, left: 30, right: 30, bottom: 20.0),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.arrow_back_ios_rounded,
                          color: KHeaderIconColor,
                          size: KHeaderIconSize,
                        ),
                        CircleAvatar(
                            backgroundImage: AssetImage('images/gull.jpg'),
                            radius: 26.0),
                      ],
                    ),
                    Text("Islamabad, Pak", style: KHomeHeaderPosition),
                  ],
                ),
              ),
            ),
            Expanded(
                flex: 7,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40.0),
                        topRight: Radius.circular(45.0)),
                    color: Colors.white,
                  ),
                  width: double.infinity,
                  child: Padding(
                    padding: EdgeInsets.only(top: 20.0),
                    child: ListView(
                      children: [
                        HomeCard(imgURL: 'images/1.jpg'),
                        HomeCard(imgURL: 'images/2.jpg'),
                        HomeCard(imgURL: 'images/3.jpg'),
                      ],
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}

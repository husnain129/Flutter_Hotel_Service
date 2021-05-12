import 'package:flutter/material.dart';
import 'package:hotel_service/components/custom_text.dart';
import 'package:hotel_service/constant.dart';

class DetailScreen extends StatefulWidget {
  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context).settings.arguments as Map;
    String img = arguments['img'];
    return Container(
      margin: EdgeInsets.only(top: 10.0),
      child: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(img),
                  fit: BoxFit.cover,
                ),
              ),
              padding: EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25.0),
                            color: Color(0xffDBECFF),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.arrow_back_ios_rounded,
                              color: Color(0xff31221F),
                            ),
                          ),
                        ),
                      ),
                      Icon(Icons.favorite_border_rounded,
                          color: Color(0xff31221F))
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      DetailExtras(text: "Rooms"),
                      DetailExtras(text: "Wifi"),
                      DetailExtras(text: "Food"),
                      DetailExtras(text: "Bed"),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 25.0),
              width: double.infinity,
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CustomText(
                          text: 'Sekartaji Room',
                          color: 0xff1F2D3A,
                          size: 22.0,
                          weight: FontWeight.w900),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50.0),
                          color: Color(0xffE8F8F5),
                          boxShadow: [KCardShadow],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.bookmark_border,
                            size: 26,
                            color: Color(0xff1DBAA3),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.star_border_rounded, color: Color(0xff1DBAA3)),
                      CustomText(
                          text: ' 4.6',
                          color: KSmallTextColor,
                          size: 18.0,
                          weight: FontWeight.w300),
                      CustomText(
                          text: ' | ',
                          color: KSmallTextColor,
                          size: 18.0,
                          weight: FontWeight.w300),
                      CustomText(
                          text: '123 Reviews',
                          color: KSmallTextColor,
                          size: 18.0,
                          weight: FontWeight.w300)
                    ],
                  ),
                  Container(
                    child: CustomText(
                        text:
                            'Cozy room is near the Depock beach. you know it\'s recomended by most of the users here. The room makes your holidays more happy.',
                        color: KSmallTextColor,
                        size: 18.0,
                        weight: FontWeight.w300),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        MiniIcon(icon: Icons.wifi),
                        MiniIcon(icon: Icons.fastfood_outlined),
                        MiniIcon(icon: Icons.fitness_center),
                        MiniIcon(icon: Icons.fireplace_outlined),
                        MiniIcon(icon: Icons.more_horiz_outlined),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MiniIcon extends StatelessWidget {
  MiniIcon({@required this.icon});
  final icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(10.0),
        ),
        color: Color(0xffF8FBFF),
      ),
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Icon(
          icon,
          color: Color(0xff245D9B),
        ),
      ),
    );
  }
}

class DetailExtras extends StatelessWidget {
  DetailExtras({@required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25.0),
        color: Color(0xffDBECFF),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14.0, vertical: 8.0),
        child: CustomText(
            text: text, color: 0xff6995C2, size: 20.0, weight: FontWeight.w400),
      ),
    );
  }
}

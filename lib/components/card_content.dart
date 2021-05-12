import 'package:flutter/material.dart';
import 'package:hotel_service/components/custom_text.dart';
import 'package:hotel_service/constant.dart';

class CardContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Container(
          padding: EdgeInsets.only(top: 10, bottom: 20),
          height: 300.0,
          width: 200.0,
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                        'Sekartaji Rooms', 0xff333F4C, 20.0, FontWeight.w800),
                    SizedBox(height: 5.0),
                    CustomText(
                        '1.5km from here', 0xffB2BAC2, 18.0, FontWeight.w300),
                    SizedBox(height: 18.0),
                    CustomText('Cozy room is near the depock beach', 0xffB2BAC2,
                        18.0, FontWeight.w300),
                  ],
                ),
              ),
              IconContainer(),
              Container(
                child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                      text: '\$123 ',
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 20.0,
                        color: Color(0xff32C0AB),
                      ),
                    ),
                    TextSpan(
                      text: 'per night',
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 18.0,
                        color: Colors.green.shade600,
                      ),
                    ),
                  ]),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}

class IconContainer extends StatelessWidget {
  const IconContainer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Icon(Icons.star_outlined,
              color: KIconColor, size: KIconSize),
          Icon(Icons.star_outlined,
              color: KIconColor, size: KIconSize),
          Icon(Icons.star_outlined,
              color: KIconColor, size: KIconSize),
          Icon(Icons.star_outlined,
              color: KIconColor, size: KIconSize),
          Icon(Icons.star_outline,
              color: KIconColor, size: KIconSize),
          SizedBox(width: 10.0),
          CustomText('4.6', 0xffF09336, 19.0, FontWeight.w900),
        ],
      ),
    );
  }
}

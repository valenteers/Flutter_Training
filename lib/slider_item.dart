import 'package:flutter/material.dart';

Widget sliderItem(String img, String name) {
  return Container(
    child: Column(
      // mainAxisAlignment: MainAxisAlignment.start,
      // crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 150,
          // width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            image: DecorationImage(
              image: AssetImage(img),
              fit: BoxFit.fitHeight,
            ),
          ),
        ),
        SizedBox(
          height: 30.0,
        ),
        Text(
          name,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 16.0,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    ),
  );
}

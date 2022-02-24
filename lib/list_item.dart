import 'package:flutter/material.dart';

Widget listItem(String img, String name) {
  return Container(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 100,
          width: 170,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
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

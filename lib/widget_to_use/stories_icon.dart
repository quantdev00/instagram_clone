import 'package:flutter/material.dart';
import 'package:recipe_2/constant/constants.dart';

Widget storie = Column(
  children: [
    Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 8.0,
        horizontal: 5.0,
      ),
      child: RotatedBox(
        quarterTurns: 30,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(64),
            color: Colors.red,
            gradient: SweepGradient(
              colors: [
                Style.orange,
                Style.red,
                Style.purple,
                Style.purple,
                Style.purple,
                Style.red,
                Style.orange,
                Style.orange,
                Style.orange,
              ],
            ),
          ),
          padding: const EdgeInsets.all(3),
          child: CircleAvatar(
            radius: 35,
          ),
        ),
      ),
    ),
    Text(
      'Names ',
      style: TextStyle(fontSize: 10),
    )
  ],
);

Widget userProfile = Row(
  children: [
    Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 8.0,
        horizontal: 5.0,
      ),
      child: RotatedBox(
        quarterTurns: 30,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(64),
            color: Colors.red,
            gradient: SweepGradient(
              colors: [
                Style.orange,
                Style.red,
                Style.purple,
                Style.purple,
                Style.purple,
                Style.red,
                Style.orange,
                Style.orange,
                Style.orange,
              ],
            ),
          ),
          padding: const EdgeInsets.all(2),
          child: const CircleAvatar(
            radius: 16,
          ),
        ),
      ),
    ),
    const Text(
      'Names ',
      style: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.bold,
      ),
    )
  ],
);

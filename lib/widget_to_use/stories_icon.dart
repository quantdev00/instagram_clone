import 'package:flutter/material.dart';
import 'package:recipe_2/constant/constants.dart';

Widget profileColumn({
  required double verticalPadding,
  required double horizontalPadding,
  required double storieBorderRadius,
  required double storieSizeRadius,
  required String userNames,
  required double userNamesFontSize,
}) =>
    Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            vertical: verticalPadding,
            horizontal: horizontalPadding,
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
              padding: EdgeInsets.all(storieBorderRadius),
              child: CircleAvatar(
                radius: storieSizeRadius,
              ),
            ),
          ),
        ),
        Text(
          userNames,
          style: TextStyle(
            fontSize: userNamesFontSize,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );

Widget profileRow({
  required double verticalPadding,
  required double horizontalPadding,
  required double? storieBorderRadius,
  required double storieSizeRadius,
  required String? userNames,
  required double userNamesFontSize,
}) =>
    Row(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            vertical: verticalPadding,
            horizontal: horizontalPadding,
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
              padding: EdgeInsets.all(storieBorderRadius!),
              child: CircleAvatar(
                radius: storieSizeRadius,
              ),
            ),
          ),
        ),
        Text(
          userNames!,
          style: TextStyle(
            fontSize: userNamesFontSize,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );

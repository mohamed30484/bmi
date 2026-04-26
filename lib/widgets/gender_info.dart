import 'dart:ffi';
import 'dart:math';

import 'package:flutter/material.dart';

class GenderInfo extends StatelessWidget {
  const GenderInfo({
    super.key,
    required this.infoColor,
    required this.infoText,
    required this.number,
    required this.plus,
    required this.minus,
  });

  final Color infoColor;
  final String infoText;
  final String number;
  final void Function() plus;
  final void Function() minus;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 155,
      height: 180,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: infoColor,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            infoText,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w300,
              color: Color(0xff8B8C9E),
            ),
          ),
          Text(
            number,
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.w700,
              color: Color(0xffFFFFFF),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                style: IconButton.styleFrom(
                  iconSize: 40,
                  foregroundColor: Color(0xff8B8C9E),
                ),
                onPressed: minus,
                icon: Icon(Icons.remove_circle_sharp),
              ),
              IconButton(
                style: IconButton.styleFrom(
                  iconSize: 40,
                  foregroundColor: Color(0xff8B8C9E),
                ),

                onPressed: plus,
                icon: Icon(Icons.add_circle_sharp),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

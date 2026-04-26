import 'package:flutter/material.dart';

class GenderWedget extends StatelessWidget {
  const GenderWedget({
    super.key,
    required this.gendercol,
    required this.genderico,
    required this.gendertext,
  });

  final Color gendercol;
  final IconData genderico;
  final String gendertext;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(24),
      width: 155,
      height: 180,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: gendercol,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(genderico, size: 96, color: Color(0xffFFFFFF)),
          Text(
            gendertext,
            style: TextStyle(
              color: Color(0xff8B8C9E),
              fontSize: 20,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}

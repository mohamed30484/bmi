import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    super.key,
    required this.onpressed,
    required this.buttontext,
  });

  final void Function() onpressed;
  final String buttontext;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: Size(double.infinity, 100),
        shape: ContinuousRectangleBorder(
          borderRadius: BorderRadiusGeometry.only(
            bottomRight: Radius.circular(12),
          ),
        ),

        backgroundColor: Color(0xffE83D67),
        foregroundColor: Color(0xffFFFFFF),
      ),
      onPressed: onpressed,
      child: Text(
        buttontext,
        style: TextStyle(fontSize: 32, fontWeight: FontWeight.w600),
      ),
    );
  }
}

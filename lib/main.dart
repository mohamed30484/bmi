import 'package:bmi_calc/screans/bmi_calculator.dart';
import 'package:bmi_calc/screans/bmi_result.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Bmi());
}

class Bmi extends StatelessWidget {
  const Bmi({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: BmiCalculator(),
    );
  }
}

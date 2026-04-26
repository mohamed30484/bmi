import 'package:bmi_calc/main.dart';
import 'package:bmi_calc/screans/bmi_calculator.dart';
import 'package:bmi_calc/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class BmiResult extends StatefulWidget {
  const BmiResult({super.key, required this.bmi});
  final double bmi;

  @override
  State<BmiResult> createState() => _BmiResultState();
}

class _BmiResultState extends State<BmiResult> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1c2135),
      appBar: AppBar(
        shadowColor: Color(0xff161a29),
        elevation: 4,

        backgroundColor: Color(0xff24263B),
        toolbarHeight: 56,
        centerTitle: true,
        title: Text(
          'BMI Calculator',
          style: TextStyle(
            color: Color(0xffFFFFFF),
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 25),

          Padding(
            padding: const EdgeInsets.only(left: 22),
            child: Text(
              'Your Result',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w700,
                color: Color(0xffFFFFFF),
              ),
            ),
          ),
          SizedBox(height: 20),
          Container(
            margin: EdgeInsets.all(22),
            width: MediaQuery.sizeOf(context).width - 22,
            height: 503,
            decoration: BoxDecoration(
              color: Color(0xff333244),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              children: [
                SizedBox(height: 58),
                Text(
                  widget.bmi < 18.5
                      ? 'Underweight , '
                      : widget.bmi > 18.50 && widget.bmi < 25
                      ? 'Normal'
                      : widget.bmi > 25 && widget.bmi < 30
                      ? 'Overweight'
                      : 'Obese',

                  style: widget.bmi < 18.5
                      ? TextStyle(
                          color: Color(0xffF2C94C),
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        )
                      : widget.bmi > 18.50 && widget.bmi < 25
                      ? TextStyle(
                          color: Color(0xff21BF73),
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        )
                      : widget.bmi > 25 && widget.bmi < 30
                      ? TextStyle(
                          color: Color(0xffF2C94C),
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        )
                      : TextStyle(
                          color: Color(0xffEB5757),
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),
                ),
                SizedBox(height: 33),
                Text(
                  widget.bmi.toStringAsFixed(2),
                  style: TextStyle(
                    color: Color(0xffFFFFFF),
                    fontSize: 64,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: 60),
                Text(
                  widget.bmi < 18.5
                      ? 'You Have a Lower than Normal Body Weight, You Can Eat a Bit More.'
                      : widget.bmi > 18.50 && widget.bmi < 25
                      ? 'You Have a Normal Body Weight, Good Job.'
                      : widget.bmi > 25 && widget.bmi < 30
                      ? 'You Have a Higher than Normal Body Weight, Try to Exercise More.'
                      : 'You Have a Much Higher than Normal Body Weight, Try to Exercise More and Follow a Healthy Diet.',

                  style: TextStyle(
                    color: Color(0xff8B8C9E),
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 5),
          CustomElevatedButton(
            onpressed: () {
              Navigator.pop(context);
            },
            buttontext: 'Re - Calculate',
          ),
        ],
      ),
    );
  }
}

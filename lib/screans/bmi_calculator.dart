import 'dart:math';

import 'package:bmi_calc/screans/bmi_result.dart';
import 'package:bmi_calc/widgets/custom_elevated_button.dart';
import 'package:bmi_calc/widgets/gender_info.dart';
import 'package:bmi_calc/widgets/gender_widget.dart';
import 'package:flutter/material.dart';

class BmiCalculator extends StatefulWidget {
  const BmiCalculator({super.key});

  @override
  State<BmiCalculator> createState() => _BmiCalculatorState();
}

class _BmiCalculatorState extends State<BmiCalculator> {
  bool ismale = true;
  double height = 0;
  int weight = 0;
  int age = 0;
  bool isweight = true;
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
        children: [
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    ismale = true;
                  });
                },
                child: GenderWedget(
                  gendercol: ismale ? Color(0xff333244) : Color(0xff24263B),
                  genderico: Icons.male,
                  gendertext: 'Male',
                ),
              ),

              InkWell(
                onTap: () {
                  setState(() {
                    ismale = false;
                  });
                },
                child: GenderWedget(
                  gendercol: ismale ? Color(0xff24263B) : Color(0xff333244),
                  genderico: Icons.female,
                  gendertext: 'Female',
                ),
              ),
            ],
          ),
          SizedBox(height: 25),
          Container(
            width: MediaQuery.sizeOf(context).width - 50,
            height: 189,
            decoration: BoxDecoration(
              color: Color(0xff333244),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'Height',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w300,
                    color: Color(0xff8B8C9E),
                  ),
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: '${height.toInt()}',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.w700,
                          color: Color(0xffFFFFFF),
                        ),
                      ),
                      TextSpan(
                        text: 'cm',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w300,
                          color: Color(0xffFFFFFF),
                        ),
                      ),
                    ],
                  ),
                ),

                Slider(
                  value: height,
                  onChanged: (value) {
                    setState(() {
                      height = value;
                    });
                  },
                  activeColor: Color(0xffE83D67),
                  inactiveColor: Color(0xffFFFFFF),
                  min: 0,
                  max: 200,
                ),
              ],
            ),
          ),
          SizedBox(height: 29),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    isweight = true;
                  });
                },
                child: GenderInfo(
                  infoColor: isweight ? Color(0xff333244) : Color(0xff24263B),
                  infoText: 'Weight',
                  number: weight.toString(),
                  plus: () {
                    setState(() {
                      weight++;
                    });
                  },
                  minus: () {
                    setState(() {
                      if (weight > 0) {
                        weight--;
                      }
                    });
                  },
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    isweight = false;
                  });
                },
                child: GenderInfo(
                  infoColor: isweight ? Color(0xff24263B) : Color(0xff333244),
                  infoText: 'Age',
                  number: age.toString(),
                  plus: () {
                    setState(() {
                      age++;
                    });
                  },
                  minus: () {
                    setState(() {
                      if (age > 0) {
                        age--;
                      }
                    });
                  },
                ),
              ),
            ],
          ),
          SizedBox(height: 27),
          CustomElevatedButton(
            onpressed: () {
              setState(() {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BmiResult(
                      bmi: weight / pow(height / 100, 2).toDouble(),
                    ),
                  ),
                );
              });
            },
            buttontext: 'Calculate',
          ),
        ],
      ),
    );
  }
}

import 'package:bmi_calculator/bmi_calc.dart';
import 'package:flutter/material.dart';

import 'bmi_result.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'BMI Calculator', home: BMICalculator());
  }
}

import 'package:flutter/material.dart';

class BMIResult extends StatelessWidget {
  bool gender;
  double result;
  int age;

  BMIResult(this.gender, this.result, this.age);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Result'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Gender: ${gender ? "Male" : "Female"}',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            Text(
              'Result: ${result.toInt()}',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            Text(
              'Age: $age',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
          ],
        ),
      ),
    );
  }
}

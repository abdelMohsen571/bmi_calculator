import 'dart:math';

import 'package:flutter/material.dart';

import 'bmi_result.dart';

class BMICalculator extends StatefulWidget {
  const BMICalculator({Key? key}) : super(key: key);

  @override
  State<BMICalculator> createState() => _BMICalculatorState();
}

class _BMICalculatorState extends State<BMICalculator> {
  bool gender = true;

  int height = 120;

  int cnt1 = 25, cnt2 = 25;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('BMI Calc')),
      body: Column(
        children: [
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        gender = !gender;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: gender ? Colors.blue : Colors.grey[400],
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        children: [
                          Icon(Icons.male, size: 100),
                          Text(
                            'Male',
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        gender = !gender;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: !gender ? Colors.pinkAccent : Colors.grey[400],
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        children: [
                          Icon(Icons.male, size: 100),
                          Text(
                            'Male',
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )),
          Expanded(
              child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey[400],
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'HEIGHT',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        '$height',
                        style: TextStyle(
                            fontSize: 40, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '  CM',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Slider(
                    value: height.toDouble(),
                    min: 40,
                    max: 200,
                    onChanged: (value) {
                      setState(() {});
                      height = value.toInt();
                    },
                  )
                ],
              ),
            ),
          )),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[400],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'AGE  ',
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '$cnt1',
                          style: TextStyle(
                              fontSize: 40, fontWeight: FontWeight.bold),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            FloatingActionButton(
                                onPressed: () {
                                  cnt1--;
                                  setState(() {});
                                },
                                mini: true,
                                child: Icon(
                                  Icons.remove,
                                )),
                            FloatingActionButton(
                                onPressed: () {
                                  cnt1++;
                                  setState(() {});
                                },
                                mini: true,
                                child: Icon(
                                  Icons.add,
                                )),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[400],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'WEIGHT  ',
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '$cnt2',
                          style: TextStyle(
                              fontSize: 40, fontWeight: FontWeight.bold),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            FloatingActionButton(
                                onPressed: () {
                                  cnt2--;
                                  setState(() {});
                                },
                                mini: true,
                                child: Icon(
                                  Icons.remove,
                                )),
                            FloatingActionButton(
                                onPressed: () {
                                  cnt2++;
                                  setState(() {});
                                },
                                mini: true,
                                child: Icon(
                                  Icons.add,
                                )),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.red[400],
              borderRadius: BorderRadius.circular(20),
            ),
            child: MaterialButton(
              onPressed: () {
                double result = cnt2 / pow(height / 100, 2);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BMIResult(gender, result, cnt1),
                    ));
              },
              child: Text('Calculate '),
            ),
          )
        ],
      ),
    );
  }
}

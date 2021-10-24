import 'dart:math';
import 'package:bmi_calculator/result_screen.dart';
import 'package:flutter/material.dart';

class BmiScreen extends StatefulWidget {
  const BmiScreen({Key? key}) : super(key: key);

  @override
  _BmiScreenState createState() => _BmiScreenState();
}

class _BmiScreenState extends State<BmiScreen> {
  bool isMale = true;
  double height = 120.0;
  int weight = 60;
  int age = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF303f9f),
      appBar: AppBar(
        backgroundColor: Color(0xFF001970),
        title: Center(
          child: Text(
            'BMI Calculator',
          ),
        ),
      ),
      body: Column(
        children: [
          // MALE,FEMALE Icon, text
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  //Male
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isMale = true;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: isMale ? Color(0xFFaab6fe) : Color(0xFF666ad1),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                              color: Colors.white,
                              width: 70.0,
                              image: NetworkImage('https://lh3.googleusercontent.com/proxy/PiV7ZWC-q-6GNxL73x5fV7ASGgzZUmEpW8Zy0cJF7f0qz9g1YA4bvXxAf6qleinwxVF82fK5AG5IvnIzas5jbPS4YSi10OTJpDErAUVxFM-w'),
                            ),
                            SizedBox(
                              height: 15.0,
                            ),
                            Text(
                              'MALE',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 25.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isMale = false;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: !isMale ? Color(0xFFaab6fe) : Color(0xFF666ad1),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                              color: Colors.white,
                              width: 80.0,
                              height: 100.0,
                              image: NetworkImage('https://cdn-icons-png.flaticon.com/512/264/264735.png'),
                            ),
                            SizedBox(
                              height: 15.0,
                            ),
                            Text(
                              'FEMALE',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 25.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          //Slideق
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFF666ad1),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'HEIGHT',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          '${height.round()}',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 40.0,
                          ),
                        ),
                        SizedBox(
                          width: 3.0,
                        ),
                        Text(
                          'CM',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                          ),
                        ),
                      ],
                    ),
                    Slider(
                        value: height,
                        min: 80.0,
                        max: 250,
                        activeColor: Color(0xFF303f9f),
                        inactiveColor: Color(0xFF8e99f3),
                        onChanged: (value) {
                          setState(() {
                            height = value;
                          });
                          print(value.round());
                        }
                        ),

                  ],
                ),
              ),
            ),
          ),
          //Weight, Age
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  // Weight
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xFF666ad1),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'WEIGHT',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 25.0,
                            ),
                          ),
                          Text(
                            '$weight',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 25.0,
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                onPressed: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                                heroTag: 'weight+',
                                mini: true,
                                child: Icon(
                                  Icons.add,
                                ),
                                backgroundColor: Color(0xFF303f9f),
                              ),
                              SizedBox(
                                width: 5.0,
                              ),
                              FloatingActionButton(
                                onPressed: () {
                                  setState(() {
                                    weight--;
                                  });
                                },
                                heroTag: 'weight-',
                                mini: true,
                                child: Icon(
                                  Icons.remove,
                                ),
                                backgroundColor: Color(0xFF303f9f),
                              ),

                            ],
                          ),

                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  // Age
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xFF666ad1),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'AGE',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 25.0,
                            ),
                          ),
                          Text(
                            '$age',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 25.0,
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          // Weight,Age , FlotaingActionButton(plus, miuns)
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              //Age
                              FloatingActionButton(
                                onPressed: () {
                                  setState(() {
                                    age++;
                                  });
                                },
                                heroTag: 'age+',
                                mini: true,
                                child: Icon(
                                  Icons.add,
                                ),
                                backgroundColor: Color(0xFF303f9f),
                              ),
                              SizedBox(
                                width: 5.0,
                              ),
                              FloatingActionButton(
                                onPressed: () {
                                  setState(() {
                                    age--;
                                  });
                                },
                                heroTag: 'age-',
                                mini: true,
                                child: Icon(
                                  Icons.remove,
                                ),
                                backgroundColor: Color(0xFF303f9f),
                              ),

                            ],
                          ),

                        ],
                      ),
                    ),
                  ),


                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            color: Color(0xFF001970),
            child: MaterialButton(
              height: 50.0,

              onPressed: () {
                double result = weight / pow(height / 100,2);
                print(result.round());
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context)=> ResultScreen(
                      result: result,
                      isMale: isMale,
                      age: age ,
                    ),
                  ),
                );
              },
              child: Text(
                'CALCULATE',
                style: TextStyle(
                  color: Colors.white
                ),
              ),
            ),
          ),

        ],

      ),

    );
  }
}

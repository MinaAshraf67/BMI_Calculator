import 'package:bmi_calculator/bmi_screen.dart';
import 'package:bmi_calculator/result_screen.dart';
import 'package:flutter/material.dart';
import 'bmi_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BmiScreen(),
    );
  }
}

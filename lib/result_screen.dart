import 'package:bmi_calculator/bmi_screen.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  final double? result;
  final bool? isMale;
  final int? age;
  ResultScreen({
    @required this.result,
    @required this.isMale,
    @required this.age,
});

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
          leading: IconButton(
            onPressed: () {
              Navigator.pop(
                context,
                MaterialPageRoute(builder: (context) => BmiScreen() ),);

            },
            icon: Icon(Icons.arrow_back_ios_sharp),
          )
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Gender : ${isMale! ? 'Male' : 'Female'}',
              style: TextStyle(
                fontSize: 40.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Age : $age',
              style: TextStyle(
                fontSize: 40.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'BMI Result : ${result!.round()}',
              style: TextStyle(
                fontSize: 40.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],

        ),
      ),

    );
  }
}

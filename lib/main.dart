import 'package:flutter/material.dart';
import 'package:bmi_calci/inputpage.dart';


void main() {
  runApp(BMICalci());
}

class BMICalci extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color(0xFF0A0E21),
        primaryColor: Color(0xFF0A0E21),
        textTheme: TextTheme(titleMedium:  TextStyle(color: Colors.white)),
      ),
         home: InputPage(),
    );
  }
}




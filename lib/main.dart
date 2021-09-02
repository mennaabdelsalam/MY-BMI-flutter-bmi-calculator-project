import 'package:flutter/material.dart';
import 'Screens/result_screen.dart';
import 'Screens/Input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:ThemeData(primaryColor: Color(0xFF090C22),
          accentColor: Colors.purple,
          scaffoldBackgroundColor:Color(0xFF090C22),
          textTheme: TextTheme(body1: TextStyle(color: Colors.white))) ,
      home: InputPage(),
      routes: {
        //'s2':(context)=>resultscreen(),
      },
    );
  }
}

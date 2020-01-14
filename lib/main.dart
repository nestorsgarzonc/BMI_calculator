import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/results_page.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/input_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
        sliderTheme: kSliderTheme,
        textTheme: TextTheme(
          body1: labelStyle,
        ),
      ),
      initialRoute: 'inputPage',
      routes: {
        'inputPage':(BuildContext context)=>InputPage(),
        'resultsPage': (BuildContext context)=>ResultPage(),
      },
    );
  }
}

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
        textTheme: TextTheme(
          body1: TextStyle(color: Colors.white,),
        ),
      ),
      home: InputPage(),
    );
  }
}
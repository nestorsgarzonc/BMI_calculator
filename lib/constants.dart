import 'package:flutter/material.dart';

const double bottomContainerHeight = 80.0;
const Color activeCardColour = Color(0xFF1D1E33);
const Color inactiveCardColour = Color(0xFF111328);
const Color bottomContainerColour = Color(0xFFEB1555);
const Color ksliderInactiveColour = Color(0xFF8D8E98);
enum Gender { male, female }
const labelStyle = TextStyle(fontSize: 18.0, color: Color(0xFF8D8E98));
const kNumberTextStyle =
    TextStyle(fontSize: 50.0, color: Colors.white, fontWeight: FontWeight.w900);
const kSliderTheme = SliderThemeData(
    thumbShape: RoundSliderThumbShape(enabledThumbRadius: 12),
    overlayShape: RoundSliderOverlayShape(overlayRadius: 30),
    thumbColor: Color(0xFFEB1555),
    overlayColor: Color(0xFFEB1555),
    activeTickMarkColor: bottomContainerColour);
const topBottonStyle =
    TextStyle(color: Colors.white, fontWeight: FontWeight.w700, fontSize: 23);

import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class BottonButton extends StatelessWidget {
  final Function onTap;
  final String buttonTitle;
  BottonButton({this.buttonTitle, this.onTap});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: bottomContainerColour,
        margin: EdgeInsets.only(top: 10),
        width: double.infinity,
        height: bottomContainerHeight,
        child: Center(
          child: Text(buttonTitle, style: topBottonStyle),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class BuildContainer extends StatelessWidget {
  final Color colour;
  final Widget cardChild;

  BuildContainer({@required this.colour, this.cardChild});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: colour,
      ),
      child: cardChild,
    );
  }
}

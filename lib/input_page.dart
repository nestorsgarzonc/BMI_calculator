import 'package:bmi_calculator/icon_content.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const double bottomContainerHeight = 80.0;
const Color activeCardColour = Color(0xFF1D1E33);
const Color bottomContainerColour = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: BuildContainer(
                    colour: activeCardColour,
                    cardChild:
                        IconContent(icon: FontAwesomeIcons.mars, text: 'MALE'),
                  ),
                ),
                Expanded(
                  child: BuildContainer(
                      colour: activeCardColour,
                      cardChild: IconContent(
                          icon: FontAwesomeIcons.venus, text: 'FEMALE')),
                ),
              ],
            ),
          ),
          Expanded(child: BuildContainer(colour: activeCardColour)),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(child: BuildContainer(colour: activeCardColour)),
                Expanded(child: BuildContainer(colour: activeCardColour)),
              ],
            ),
          ),
          Container(
            color: bottomContainerColour,
            margin: EdgeInsets.only(top: 10),
            width: double.infinity,
            height: bottomContainerHeight,
          ),
        ],
      ),
    );
  }
}

import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/icon_content.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;
  int heightSlider = 160;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Expanded(child: _firstRow()),
          Expanded(
            child: BuildContainer(
              colour: activeCardColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text('HEIGHT'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text('$heightSlider', style: kNumberTextStyle),
                      Text('cm'),
                    ],
                  ),
                  Slider(
                    value: heightSlider.toDouble(),
                    min: 120,
                    max: 220,
                    activeColor: bottomContainerColour,
                    inactiveColor: ksliderInactiveColour,
                    onChanged: (double value) {
                      setState(() {
                        heightSlider = value.round();
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                    child: BuildContainer(
                  colour: activeCardColour,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('WEIGHT'),
                      Text('60', style: kNumberTextStyle),
                      _buttonsLastRow()
                    ],
                  ),
                )),
                Expanded(
                    child: BuildContainer(
                  colour: activeCardColour,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('AGE'),
                      Text('60', style: kNumberTextStyle),
                      _buttonsLastRow(),
                    ],
                  ),
                )),
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

  _buttonsLastRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add, color: Colors.white),
          backgroundColor: Colors.grey,
        ),
        SizedBox(width: 10),
        FloatingActionButton(
            onPressed: () {},
            child: Icon(Icons.add, color: Colors.white),
            backgroundColor: Colors.grey),
      ],
    );
  }

  _firstRow() {
    return Row(
      children: <Widget>[
        Expanded(
          child: BuildContainer(
            colour: selectedGender == Gender.male
                ? activeCardColour
                : inactiveCardColour,
            cardChild: IconContent(icon: FontAwesomeIcons.mars, text: 'MALE'),
            onPress: () {
              setState(() => selectedGender = Gender.male);
            },
          ),
        ),
        Expanded(
          child: BuildContainer(
            colour: selectedGender == Gender.female
                ? activeCardColour
                : inactiveCardColour,
            cardChild:
                IconContent(icon: FontAwesomeIcons.venus, text: 'FEMALE'),
            onPress: () {
              setState(() => selectedGender = Gender.female);
            },
          ),
        ),
      ],
    );
  }
}

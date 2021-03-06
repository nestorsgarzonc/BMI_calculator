import 'package:bmi_calculator/calculator_brain.dart';
import 'package:bmi_calculator/components/button_botton.dart';
import 'package:bmi_calculator/components/icon_content.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:bmi_calculator/components/round_icon_button.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/screens/results_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;
  int heightSlider = 160;
  int weight = 60;
  int age = 22;
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
                      Text('$weight', style: kNumberTextStyle),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          RoundIconButton(
                            icon: FontAwesomeIcons.minus,
                            onPress: () {
                              setState(() => weight--);
                            },
                          ),
                          SizedBox(width: 10),
                          RoundIconButton(
                            icon: FontAwesomeIcons.plus,
                            onPress: () {
                              setState(() => weight++);
                            },
                          ),
                        ],
                      ),
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
                      Text('$age', style: kNumberTextStyle),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          RoundIconButton(
                            icon: FontAwesomeIcons.minus,
                            onPress: () {
                              setState(() => age--);
                            },
                          ),
                          SizedBox(width: 10),
                          RoundIconButton(
                            icon: FontAwesomeIcons.plus,
                            onPress: () {
                              setState(() => age++);
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                )),
              ],
            ),
          ),
          BottonButton(
            buttonTitle: 'CALCULATE YOUR BMI',
            onTap: () {
              CalculatorBrain calc =
                  CalculatorBrain(height: heightSlider, weight: weight);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ResultPage(
                    bmiResult: calc.calculateBMI(),
                    interpretation: calc.getInterpretation(),
                    resultText: calc.getResult(),
                  ),
                ),
              );
            },
          ),
        ],
      ),
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

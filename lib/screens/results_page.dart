import 'package:bmi_calculator/components/button_botton.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  final String bmiResult;
  final String resultText;
  final String interpretation;
  ResultPage(
      {@required this.bmiResult,
      @required this.resultText,
      @required this.interpretation});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('YOUR RESULT'),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
            flex: 8,
            child: BuildContainer(
              colour: activeCardColour,
              cardChild: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(resultText.toUpperCase(), style: kResultStyle),
                  Text(bmiResult, style: kBMItextStyle),
                  Text(interpretation,
                      style: kBMIBodyStyle, textAlign: TextAlign.center),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: BottonButton(
              buttonTitle: 'RECALCULATE YOUR BMI',
              onTap: () => Navigator.pushReplacementNamed(context, 'inputPage'),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  InputPage({Key key}) : super(key: key);

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
                Expanded(child: BuildContainer(colour: Color(0xFF1D1E33))),
                Expanded(child: BuildContainer(colour: Color(0xFF1D1E33))),
              ],
            ),
          ),
          Expanded(child: BuildContainer(colour: Color(0xFF1D1E33))),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(child: BuildContainer(colour: Color(0xFF1D1E33))),
                Expanded(child: BuildContainer(colour: Color(0xFF1D1E33))),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class BuildContainer extends StatelessWidget {
  final Color colour;
  BuildContainer({@required this.colour});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: colour,
      ),
      child: Container(),
    );
  }
}

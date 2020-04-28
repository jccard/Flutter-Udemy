import 'package:flutter/material.dart';
//import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';

enum SelectedGender { MALE, FEMALE }

const double bottomBarHeight = 50.0;
const Color inactiveCardColor = Color(0xFF111328);
const Color activeCardColor = Color(0xFF1D1E33);
const Color bottomContainerColor = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  ////////////////////
  // Class Vars and Functions
  SelectedGender selectedGender;

  ////////////////////
  // Widget Proper
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  // MALE Card
                  child: ReusableCard(
                    cardColor: selectedGender == SelectedGender.MALE
                        ? activeCardColor
                        : inactiveCardColor,
                    cardChild: IconContent(
                      displayIcon: FontAwesomeIcons.mars,
                      displayText: 'MALE',
                    ),
                    onTap: () {
                      setState(() {
                        selectedGender = SelectedGender.MALE;
                      });
                    },
                  ),
                ),
                Expanded(
                  // FEMALE Card
                  child: ReusableCard(
                    cardColor: selectedGender == SelectedGender.FEMALE
                        ? activeCardColor
                        : inactiveCardColor,
                    cardChild: IconContent(
                      displayIcon: FontAwesomeIcons.venus,
                      displayText: 'FEMALE',
                    ),
                    onTap: () {
                      setState(() {
                        selectedGender = SelectedGender.FEMALE;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(cardColor: activeCardColor),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(cardColor: activeCardColor),
                ),
                Expanded(
                  child: ReusableCard(cardColor: activeCardColor),
                ),
              ],
            ),
          ),
          Container(
            color: bottomContainerColor,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomBarHeight,
          )
        ]));
  }
}

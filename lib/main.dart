import 'package:flutter/material.dart';
import 'package:colorz/colorz.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text(
            'Dicee',
            style: TextStyle(
              color: Colorz.aBetterBlue,
            ),
          ),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

// Stateful Dice Page
class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDie = 4;
  int rightDie = 3;

  void rollDie(whichDie) {
    print('Die to change: $whichDie');
    switch (whichDie) {
      case "leftDie":
        leftDie = Random().nextInt(6) + 1;
        break;
      case "rightDie":
        rightDie = Random().nextInt(6) + 1;
        break;
      case "bothDice":
        leftDie = Random().nextInt(6) + 1;
        rightDie = Random().nextInt(6) + 1;
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: FlatButton(
                    onPressed: () {
                      setState(() {
                        // triggers build() on this widget
                        rollDie('leftDie');
                      });
                    },
                    child: Image.asset('images/dice$leftDie.png'),
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    onPressed: () {
                      setState(() {
                        // triggers build() on this widget
                        rollDie('rightDie');
                      });
                    },
                    child: Image.asset('images/dice$rightDie.png'),
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: FlatButton(
                    onPressed: () {
                      setState(() {
                        rollDie('bothDice');
                      });
                    },
                    child: Text(
                      'Click to roll both dice',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
// END Stateful Dice Page

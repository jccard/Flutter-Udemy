import 'package:flutter/material.dart';
import 'package:colorz/colorz.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colorz.abeBlue,
        appBar: AppBar(
          backgroundColor: Colorz.aaronBurr,
          title: Text(
            'Magic 8 Ball',
            style: TextStyle(
              color: Colorz.abyssalFissure,
            ),
          ),
        ),
        body: BallPage(),
      ),
    ),
  );
}

// Ball Page Stateful Widget
class BallPage extends StatefulWidget {
  @override
  _BallPageState createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  int ballImage = 1;

  void shake8ball() {
    ballImage = Random().nextInt(5) +1;
    print('The magic 8 ball has been shaken... Result is: $ballImage');
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  shake8ball();
                });
              },
              child: Image.asset('images/ball$ballImage.png'),
            ),
          ),
        ],
      ),
    );
  }
}

// END Ball Page Stateful Widget

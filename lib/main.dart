import 'package:flutter/material.dart';
import 'screens/input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
      /*theme: ThemeData(
        primaryColor: Colors.deepPurple,
        scaffoldBackgroundColor: Color.fromRGBO(240, 200, 254, 100),
        accentColor: Colors.deepOrangeAccent[600],
        textTheme: TextTheme(
          bodyText1: TextStyle(color: Colors.white),
          bodyText2: TextStyle(color: Colors.white),
        ),
      ),*/
      /*
        initialRoute: '/calculate',
        routes: {
          '/calculate': (context) => InputPage(),
          '/results': (context) => ResultsPage(),
        });
        */
      home: InputPage(),
    );
  }
}

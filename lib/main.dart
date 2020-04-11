import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            children: <Widget>[
              CircleAvatar(
                radius: 50.0,
                backgroundColor: Colors.teal, // otherwise gives blue background
                backgroundImage: AssetImage('assets/images/orange_icon.png'),
              ),
              Text(
                'Mr. Orange',
                style: TextStyle(
                  fontFamily: 'Girassol',
                  fontSize: 20.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Source of Vitamin C',
                style: TextStyle(
                  fontFamily: 'DancingScript',
                  fontSize: 15.0,
                  letterSpacing: 2.0,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}

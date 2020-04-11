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
              Divider(
                indent: 50.0,
                endIndent: 50.0,
              ),
              Container(
                color: Colors.white,
                margin: EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 25.0,
                ),
                padding: EdgeInsets.all(
                  10.0,
                ),
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.add_shopping_cart,
                      size: 30.0,
                      color: Colors.teal[200],
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      'Put it in the cart',
                    ),
                  ],
                ),
              ),
              Container(
                color: Colors.white,
                margin: EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 25.0,
                ),
                padding: EdgeInsets.all(
                  10.0,
                ),
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.note_add,
                      size: 30.0,
                      color: Colors.teal[200],
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      'Write it down',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}

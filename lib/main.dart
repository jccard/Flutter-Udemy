import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
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
              SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(
                  color: Colors.white,
                ),
              ),
              Card(
                // color: Colors.white, // Card has white color by default
                margin: EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 25.0,
                ),
                child: ListTile(
                  leading: Icon(
                    Icons.note_add,
                    size: 30.0,
                    color: Colors.teal[200],
                  ),
                  title: Text(
                    'Make a note',
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 25.0,
                ),
                child: ListTile(
                  leading: Icon(
                    Icons.add_a_photo,
                    size: 30.0,
                    color: Colors.teal[200],
                  ),
                  title: Text(
                    'Take a picture',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}

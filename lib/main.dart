/// This is from Section 3 of the Udemy course - recreating the I Am Rich app.
/// We created a new Flutter project, removed most of the boilerplate, and then
///   started writing new code.
/// Key points:
///   - everything is a widget, including centering the text
///   - right-click to use dartfmt (auto-formatter)
///     - use required the trailing commas

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Center(
        child: Text('Hello World'),
      ),
    ),
  );
}

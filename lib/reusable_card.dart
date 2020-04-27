import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  // This is how I can set it up to define color for each panel.
  ReusableCard(
      {@required this.colour,
        this.cardChild}); // property is optional by default
  final Color
  colour; // makes this property immutable; once set, it can't be changed
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
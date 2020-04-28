import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  // Constructor: This is how I can set it up to define color for each panel.
  ReusableCard({
    @required this.cardColor,
    this.cardChild,
    this.onTap,
  }); // property is optional by default
  final Color cardColor; // makes this property immutable; once set, it can't be changed
  final Widget cardChild;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: cardColor,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
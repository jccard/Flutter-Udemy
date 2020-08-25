import 'package:flutter/material.dart';

//////////////////
// BORDER RADIUS
const kIsMeBorderRadius = BorderRadius.only(
  topLeft: Radius.circular(30.0),
  bottomLeft: Radius.circular(30.0),
  bottomRight: Radius.circular(30.0),
);

const kIsNotMeBorderRadius = BorderRadius.only(
  topRight: Radius.circular(30.0),
  bottomLeft: Radius.circular(30.0),
  bottomRight: Radius.circular(30.0),
);


//////////////////
// BOX DECORATION
const kMessageContainerDecoration = BoxDecoration(
  border: Border(
    top: BorderSide(color: Colors.lightBlueAccent, width: 2.0),
  ),
);


//////////////////
// INPUT DECORATION
const kMessageTextFieldDecoration = InputDecoration(
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  hintText: 'Type your message here...',
  hintStyle: TextStyle(color: Colors.grey),
  border: InputBorder.none,
);

const kTextFieldDecoration = InputDecoration(
  hintText: 'Enter value',
  hintStyle: TextStyle(
    color: Colors.black12,
  ),
  contentPadding:
  EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.blueAccent, width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.blueAccent, width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
);


//////////////////
// TEXT STYLES
const kMessageTextFieldText = TextStyle(
  color: Colors.black,
);
const kSendButtonTextStyle = TextStyle(
  color: Colors.lightBlueAccent,
  fontWeight: FontWeight.bold,
  fontSize: 18.0,
);
const kMessageSenderTextStyle = TextStyle(
  fontSize: 12.0,
  color: Colors.black38,
);
const kIsMeMessageTextStyle = TextStyle(
  color: Colors.white,
  fontSize: 14.0,
);
const kIsNotMeMessageTextStyle = TextStyle(
  color: Colors.black54,
  fontSize: 16.0,
);
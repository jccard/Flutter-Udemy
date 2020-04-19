import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(String filename) {
    final AudioCache player = AudioCache();
    player.play(filename);
  }

  Expanded buildKey({Color keyColor, String keyFilename}) {
    // enclose parameters in braces to use Named Parameters!
    return Expanded(
      child: FlatButton(
        color: keyColor,
        onPressed: () {
          playSound(keyFilename); // AudioPlayer assumes assets/ folder
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(keyColor: Colors.red, keyFilename: 'note1.wav'),
              buildKey(keyColor: Colors.orange, keyFilename: 'note2.wav'),
              buildKey(keyColor: Colors.yellow, keyFilename: 'note3.wav'),
              buildKey(keyColor: Colors.green, keyFilename: 'note4.wav'),
              buildKey(keyColor: Colors.blue, keyFilename: 'note5.wav'),
              buildKey(keyColor: Colors.indigo, keyFilename: 'note6.wav'),
              buildKey(keyColor: Colors.deepPurple, keyFilename: 'note7.wav'),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int noteNumber) {
    final player = AudioCache();
    player.play('note$noteNumber.wav');
  }

  Expanded buildKey({Color color, noteNum}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(noteNum);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Xylophone'),
          backgroundColor: Colors.black87,
        ),
        body: SafeArea(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                buildKey(color: Colors.red, noteNum: 1),
                buildKey(color: Colors.orange, noteNum: 2),
                buildKey(color: Colors.yellow, noteNum: 3),
                buildKey(color: Colors.green, noteNum: 4),
                buildKey(color: Colors.blue, noteNum: 5),
                buildKey(color: Colors.indigo, noteNum: 6),
                buildKey(color: Colors.deepPurpleAccent, noteNum: 7),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

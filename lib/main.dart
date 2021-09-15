import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int num) {
    final player = AudioCache();
    player.play('note$num.wav');
  }

  Expanded button(
      {required Color color, required int num, required String syllable}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(num);
        },
        child: Text('$syllable'),
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
            children: [
              button(color: Colors.red, num: 1, syllable: '도'),
              button(color: Colors.orange, num: 2, syllable: '레'),
              button(color: Colors.yellow, num: 3, syllable: '미'),
              button(color: Colors.green, num: 4, syllable: '파'),
              button(color: Colors.blue, num: 5, syllable: '솔'),
              button(color: Colors.purple, num: 6, syllable: '라'),
              button(color: Colors.pink.shade100, num: 7, syllable: '시'),
            ],
          ),
        ),
      ),
    );
  }
}

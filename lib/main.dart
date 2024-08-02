import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());
void playSound(int Soundnumber) {
  final player = AudioPlayer();
  player.play(AssetSource('note$Soundnumber.wav'));
}

Expanded buildkey({required Color color, required int Soundnumber}) {
  return Expanded(
    child: TextButton(
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all<Color>(color),
      ),
      onPressed: () {
        playSound(Soundnumber);
      },
      child: Text('$Soundnumber'),
    ),
  );
}

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                buildkey(color: Colors.red, Soundnumber: 1),
                buildkey(color: Colors.blue, Soundnumber: 2),
                buildkey(color: Colors.green, Soundnumber: 3),
                buildkey(color: Colors.yellow, Soundnumber: 4),
                buildkey(color: Colors.grey, Soundnumber: 5),
                buildkey(color: Colors.purple, Soundnumber: 6),
                buildkey(color: Colors.orange, Soundnumber: 7),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());
void playSound(int Soundnumber) {
  final player = AudioPlayer();
  player.play('note$Soundnumber.wav');
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
                Expanded(
                  child: TextButton(
                    style: ButtonStyle(
                      backgroundColor:
                          WidgetStateProperty.all<Color>(Colors.red),
                    ),
                    onPressed: () {
                      playSound(1);
                    },
                    child: Text('1'),
                  ),
                ),
                Expanded(
                  child: TextButton(
                    style: ButtonStyle(
                      backgroundColor:
                          WidgetStateProperty.all<Color>(Colors.blue),
                    ),
                    onPressed: () {
                      playSound(2);
                    },
                    child: Text('2'),
                  ),
                ),
                Expanded(
                  child: TextButton(
                    style: ButtonStyle(
                      backgroundColor:
                          WidgetStateProperty.all<Color>(Colors.green),
                    ),
                    onPressed: () {
                      playSound(3);
                    },
                    child: Text('3'),
                  ),
                ),
                Expanded(
                  child: TextButton(
                    style: ButtonStyle(
                      backgroundColor:
                          WidgetStateProperty.all<Color>(Colors.yellow),
                    ),
                    onPressed: () {
                      playSound(4);
                    },
                    child: Text('4'),
                  ),
                ),
                Expanded(
                  child: TextButton(
                    style: ButtonStyle(
                      backgroundColor:
                          WidgetStateProperty.all<Color>(Colors.grey),
                    ),
                    onPressed: () async {
                      playSound(5);
                    },
                    child: Text('5'),
                  ),
                ),
                Expanded(
                  child: TextButton(
                    style: ButtonStyle(
                      backgroundColor:
                          WidgetStateProperty.all<Color>(Colors.purple),
                    ),
                    onPressed: () {
                      playSound(6);
                    },
                    child: Text('6'),
                  ),
                ),
                Expanded(
                  child: TextButton(
                    style: ButtonStyle(
                      backgroundColor:
                          WidgetStateProperty.all<Color>(Colors.orange),
                    ),
                    onPressed: () async {
                      playSound(7);
                    },
                    child: Text('7'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

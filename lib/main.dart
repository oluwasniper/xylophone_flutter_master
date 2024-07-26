import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Container(
            child: Column(
              children: [
                TextButton(
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all<Color>(Colors.red),
                  ),
                  onPressed: () async {
                    final player = AudioPlayer();
                    await player.setSourceAsset('note1.wav');
                    player.play(AssetSource('note1.wav'));
                  },
                  child: Text('1'),
                ),
                TextButton(
                  style: ButtonStyle(
                    backgroundColor:
                        WidgetStateProperty.all<Color>(Colors.blue),
                  ),
                  onPressed: () async {
                    final player = AudioPlayer();
                    await player.setSourceAsset('note2.wav');
                    player.play(AssetSource('note2.wav'));
                  },
                  child: Text('2'),
                ),
                TextButton(
                  style: ButtonStyle(
                    backgroundColor:
                        WidgetStateProperty.all<Color>(Colors.green),
                  ),
                  onPressed: () async {
                    final player = AudioPlayer();
                    await player.setSourceAsset('note3.wav');
                    player.play(AssetSource('note3.wav'));
                  },
                  child: Text('3'),
                ),
                TextButton(
                  style: ButtonStyle(
                    backgroundColor:
                        WidgetStateProperty.all<Color>(Colors.yellow),
                  ),
                  onPressed: () async {
                    final player = AudioPlayer();
                    await player.setSourceAsset('note4.wav');
                    player.play(AssetSource('note4.wav'));
                  },
                  child: Text('4'),
                ),
                TextButton(
                  style: ButtonStyle(
                    backgroundColor:
                        WidgetStateProperty.all<Color>(Colors.black),
                  ),
                  onPressed: () async {
                    final player = AudioPlayer();
                    await player.setSourceAsset('note5.wav');
                    player.play(AssetSource('note5.wav'));
                  },
                  child: Text('5'),
                ),
                TextButton(
                  style: ButtonStyle(
                    backgroundColor:
                        WidgetStateProperty.all<Color>(Colors.purple),
                  ),
                  onPressed: () async {
                    final player = AudioPlayer();
                    await player.setSourceAsset('note6.wav');
                    player.play(AssetSource('note6.wav'));
                  },
                  child: Text('6'),
                ),
                TextButton(
                  style: ButtonStyle(
                    backgroundColor:
                        WidgetStateProperty.all<Color>(Colors.orange),
                  ),
                  onPressed: () async {
                    final player = AudioPlayer();
                    await player.setSourceAsset('note7.wav');
                    player.play(AssetSource('note7.wav'));
                  },
                  child: Text('7'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

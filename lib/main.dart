import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

void main() => runApp(
      XylophoneApp(),
    );

class XylophoneApp extends StatelessWidget {
  void playSounds(int note) {
    final assetsAudioPlayer = AssetsAudioPlayer();
    assetsAudioPlayer.open(Audio("assets/note$note.wav"));
  }

  Expanded noteWidgetButtons({Color color, int noteNum}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSounds(noteNum);
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
              noteWidgetButtons(color: Colors.red, noteNum: 1),
              noteWidgetButtons(color: Colors.orange, noteNum: 2),
              noteWidgetButtons(color: Colors.yellow, noteNum: 3),
              noteWidgetButtons(color: Colors.green, noteNum: 4),
              noteWidgetButtons(color: Colors.teal, noteNum: 5),
              noteWidgetButtons(color: Colors.blue, noteNum: 6),
              noteWidgetButtons(color: Colors.purple, noteNum: 7),
            ],
          ),
        ),
      ),
    );
  }
}

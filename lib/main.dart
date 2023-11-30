import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(Xylophone());

class Xylophone extends StatelessWidget {
  void playSound(int noteNumber) {
    final player = AudioPlayer();
    player.play(AssetSource('note$noteNumber.wav'));
  }

  Expanded tuneButton(Color color, int noteNumber) {
    return Expanded(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(primary: color),
        onPressed: () {
          playSound(noteNumber);
        },
        child: Text(''),
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text('Xylophone'),
            centerTitle: true,
            backgroundColor: Colors.indigo,
          ),
          backgroundColor: Colors.black26,
          body: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                tuneButton(Colors.red, 1),
                tuneButton(Colors.orange, 2),
                tuneButton(Colors.yellow, 3),
                tuneButton(Colors.green, 4),
                tuneButton(Colors.teal, 5),
                tuneButton(Colors.blue, 6),
                tuneButton(Colors.purple, 7),
              ]
          ),
        ),
      ),
    );
  }
}

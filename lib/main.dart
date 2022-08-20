import 'package:flutter/material.dart';
import 'package:audioplayers/src/audio_cache.dart';

void main() => runApp(const XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({Key? key}) : super(key: key);

  void playSound({required int noteNumber}) {
    final player = AudioCache();
    player.play("note$noteNumber.wav");
  }

  buildKey({required keyColor, noteNumber}) {
    return Expanded(
      child: Container(
        color: keyColor,
        child: TextButton(
          child: const Text(
            "Click Me",
            style: TextStyle(color: Colors.white),
          ),
          onPressed: () {
            playSound(noteNumber: noteNumber);
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                buildKey(keyColor: Colors.red, noteNumber: 1),
                buildKey(keyColor: Colors.orange, noteNumber: 2),
                buildKey(keyColor: Colors.yellow, noteNumber: 3),
                buildKey(keyColor: Colors.green, noteNumber: 4),
                buildKey(keyColor: Colors.teal, noteNumber: 5),
                buildKey(keyColor: Colors.blue, noteNumber: 6),
                buildKey(keyColor: Colors.purple, noteNumber: 7),
                buildKey(keyColor: Colors.pink, noteNumber: 1),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:audiofileplayer/audiofileplayer.dart';

void main() {
  runApp(const XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  void playSound(int soundNumber) {
    Audio.load('assets/note$soundNumber.wav')
      ..play()
      ..dispose();
  }

  Expanded buildKey({backgroundColor, soundNumber}) {
    return Expanded(
      child: ElevatedButton(
        onPressed: () {
          playSound(soundNumber);
        },
        style: ElevatedButton.styleFrom(
            shape:
                const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
            backgroundColor: backgroundColor,
            minimumSize: const Size.fromHeight(50)),
        child: const Text(''),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
            child: Column(children: [
          buildKey(backgroundColor: Colors.red, soundNumber: 1),
          buildKey(backgroundColor: Colors.orange, soundNumber: 2),
          buildKey(backgroundColor: Colors.yellow, soundNumber: 3),
          buildKey(backgroundColor: Colors.green, soundNumber: 4),
          buildKey(backgroundColor: Colors.teal, soundNumber: 5),
          buildKey(backgroundColor: Colors.blue, soundNumber: 6),
          buildKey(backgroundColor: Colors.purple, soundNumber: 7),
        ])),
      ),
    );
  }
}

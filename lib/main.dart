import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
              child: TextButton(
            onPressed: () async {
              final player = AudioPlayer();
              await player.play(AssetSource('sound/note1.wav'));
            },
            child: const Text('Click Me'),
          )),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Future<void> audio(int typeMusic) async {
    AudioCache.instance = AudioCache(prefix: '');
    final player = AudioPlayer();
    await player.play(AssetSource('lib/assets/note$typeMusic.wav'));
  }

  Expanded builKey(int typeMusic, Color color,) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          audio(typeMusic);
        },
        child: Container(
          color: color,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                builKey(1, Colors.black),
                builKey(2, Colors.white),
                builKey(3, Colors.black),
                builKey(4, Colors.white),
                builKey(5, Colors.black),
                builKey(6, Colors.white),
                builKey(7, Colors.black),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

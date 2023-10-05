import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PianoKey extends StatefulWidget {
  final String keyName;
  final Color color;

  const PianoKey({Key? key, required this.keyName, required this.color})
      : super(key: key);

  @override
  State<PianoKey> createState() => _PianoKeyState();
}

class _PianoKeyState extends State<PianoKey> {
  final player = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    final color = widget.color;
    return RotatedBox(
      quarterTurns: 1,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          minimumSize: const Size(10, 50),
        ),
        onPressed: () async {
          await player.play(AssetSource('sounds/my_sound.mp3'));
        },
        child: Text('Play Sound'),
      ),
    );
  }
}

import 'package:audioplayers/audioplayers.dart';
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

  double calculateHeight(Color color) {
    return color == const Color(0xFF000000) ? 60.0 : 150.0;
  }

  double calculateWidth(Color color) {
    return color == const Color(0xFF000000) ? 20.0 : 40.0;
  }

  String setText(Color color) {
    return color == const Color(0xFF000000) ? "" : widget.keyName;
  }

  @override
  Widget build(BuildContext context) {
    final color = widget.color;
    final height = calculateHeight(color);
    final width = calculateWidth(color);
    final text = setText(widget.color);

    return Container(
      width: width,
      height: height,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
        ),
        onPressed: () async {
          await player.play(AssetSource('sounds/my_sound.mp3'));
        },
        child: Text(
          text,
          style: TextStyle(color: Color(0xFF00A6FF)),
        ),
      ),
    );
  }
}

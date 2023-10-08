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
    String string = widget.keyName;
    return color == const Color(0xFF000000) ? "" : string.substring(0, string.length - 1);
  }

  @override
  void initState() {
    super.initState();
    player.setSource(DeviceFileSource("assets/piano_88/piano-${widget.keyName}.wav"));
  }

  @override
  Widget build(BuildContext context) {
    final color = widget.color;
    final height = calculateHeight(color);
    final width = calculateWidth(color);
    final text = setText(widget.color);
    final fullNote = widget.keyName;

    return Container(
      width: width,
      height: height,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
        ),
        onPressed: () async {
          debugPrint("Pressed Key $fullNote");
          await player.play(DeviceFileSource("assets/piano_88/piano-$fullNote.wav"));
        },
        child: Text(
          text,
          style: TextStyle(color: Color(0xFF00A6FF)),
        ),
      ),
    );
  }
}
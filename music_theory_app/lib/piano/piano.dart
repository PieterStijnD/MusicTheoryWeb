import 'package:flutter/cupertino.dart';
import 'package:music_theory_app/piano/piano_key.dart';

import 'piano_key.dart';

class Piano extends StatelessWidget {
  const Piano({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        PianoKey(keyName: "C", color: Color(0xFFFFFFFF)),
        PianoKey(keyName: "C#", color: Color(0xFF000000)),
        PianoKey(keyName: "D", color: Color(0xFFFFFFFF)),
        PianoKey(keyName: "D#", color: Color(0xFF000000)),
        PianoKey(keyName: "E", color: Color(0xFFFFFFFF)),
        PianoKey(keyName: "F", color: Color(0xFFFFFFFF)),
        PianoKey(keyName: "F#", color: Color(0xFF000000)),
        PianoKey(keyName: "G", color: Color(0xFFFFFFFF)),
        PianoKey(keyName: "G#", color: Color(0xFF000000)),
        PianoKey(keyName: "A", color: Color(0xFFFFFFFF)),
        PianoKey(keyName: "A#", color: Color(0xFF000000)),
        PianoKey(keyName: "B", color: Color(0xFFFFFFFF)),
      ],
    );
  }
}

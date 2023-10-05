import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'piano_key.dart';

class Piano extends StatelessWidget {
  const Piano({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 2000.0,
      child: Stack(
        //alignment:new Alignment(x, y)
        children: const <Widget>[
          PianoKey(keyName: "C", color: Color(0xFFFFFFFF)),
          Positioned(
            left: 42.0,
            child: PianoKey(keyName: "D", color: Color(0xFFFFFFFF)),
          ),
          Positioned(
            left: 84.0,
            child: PianoKey(keyName: "E", color: Color(0xFFFFFFFF)),
          ),
          Positioned(
            left: 126.0,
            child: PianoKey(keyName: "F", color: Color(0xFFFFFFFF)),
          ),
          Positioned(
            left: 168.0,
            child: PianoKey(keyName: "G", color: Color(0xFFFFFFFF)),
          ),
          Positioned(
            left: 210.0,
            child: PianoKey(keyName: "A", color: Color(0xFFFFFFFF)),
          ),
          Positioned(
            left: 252.0,
            child: PianoKey(keyName: "B", color: Color(0xFFFFFFFF)),
          ),
          //SHARPS
          Positioned(
            left: 31.0,
            child: PianoKey(keyName: "C#", color: Color(0xFF000000)),
          ),
          Positioned(
            left: 73.0,
            child: PianoKey(keyName: "D#", color: Color(0xFF000000)),
          ),
          Positioned(
            left: 199.0,
            child: PianoKey(keyName: "G#", color: Color(0xFF000000)),
          ),
          Positioned(
            left: 157.0,
            child: PianoKey(keyName: "F#", color: Color(0xFF000000)),
          ),
          Positioned(
            left: 241.0,
            child: PianoKey(keyName: "A#", color: Color(0xFF000000)),
          ),
        ],
      ),
    );
  }
}

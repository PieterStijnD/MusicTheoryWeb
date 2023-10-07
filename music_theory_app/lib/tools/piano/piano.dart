import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'piano_key.dart';

class Piano extends StatelessWidget {
  const Piano({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 2000.0,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(200, 0, 0, 0) ,
        child: Stack(
          //alignment:new Alignment(x, y)
          children: const <Widget>[
            PianoKey(keyName: "C4", color: Color(0xFFFFFFFF)),
            Positioned(
              left: 42.0,
              child: PianoKey(keyName: "D4", color: Color(0xFFFFFFFF)),
            ),
            Positioned(
              left: 84.0,
              child: PianoKey(keyName: "E4", color: Color(0xFFFFFFFF)),
            ),
            Positioned(
              left: 126.0,
              child: PianoKey(keyName: "F4", color: Color(0xFFFFFFFF)),
            ),
            Positioned(
              left: 168.0,
              child: PianoKey(keyName: "G4", color: Color(0xFFFFFFFF)),
            ),
            Positioned(
              left: 210.0,
              child: PianoKey(keyName: "A4", color: Color(0xFFFFFFFF)),
            ),
            Positioned(
              left: 252.0,
              child: PianoKey(keyName: "B4", color: Color(0xFFFFFFFF)),
            ),
            //SHARPS
            Positioned(
              left: 31.0,
              child: PianoKey(keyName: "CSharp4", color: Color(0xFF000000)),
            ),
            Positioned(
              left: 73.0,
              child: PianoKey(keyName: "DSharp4", color: Color(0xFF000000)),
            ),
            Positioned(
              left: 199.0,
              child: PianoKey(keyName: "GSharp4", color: Color(0xFF000000)),
            ),
            Positioned(
              left: 157.0,
              child: PianoKey(keyName: "FSharp4", color: Color(0xFF000000)),
            ),
            Positioned(
              left: 241.0,
              child: PianoKey(keyName: "ASharp4", color: Color(0xFF000000)),
            ),
          ],
        ),
      ),
    );
  }
}

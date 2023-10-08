import 'package:flutter/material.dart';

import '../shared_assets/menu_button.dart';
import '../shared_assets/menu_row.dart';

class TheoryMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            MenuRow(
              menuButtons: [
                {
                  "listTileName": "Note Names",
                  "icon": Icon(Icons.music_note),
                },
                {
                  "listTileName": "Intervals",
                  "icon": Icon(Icons.music_note),
                },
                {
                  "listTileName": "Scales",
                  "icon": Icon(Icons.music_note),
                },
              ],
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../shared_assets/menu_row.dart';

class PracticeMenu extends StatelessWidget {
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
                  "listTileName": "Practice 1",
                  "icon": Icon(Icons.looks_one),
                },
                {
                  "listTileName": "Practice 2",
                  "icon": Icon(Icons.looks_two),
                },
                {
                  "listTileName": "Practice 3",
                  "icon": Icon(Icons.looks_3),
                },
              ],
            ),
          ],
        ),
      ),
    );
  }
}
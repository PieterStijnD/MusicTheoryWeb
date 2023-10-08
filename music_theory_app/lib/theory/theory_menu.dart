import 'package:flutter/material.dart';

import '../shared_assets/menu_button.dart';

class TheoryMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              children: const [
                MenuButton(
                  listTileName: 'First Tile',
                  icon: Icon(Icons.looks_one),
                ),
                MenuButton(
                  listTileName: 'Second Tile',
                  icon: Icon(Icons.looks_two),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'menu_button.dart';

class MenuRow extends StatelessWidget {
  final List menuButtons;

  const MenuRow({
    super.key,
    required this.menuButtons,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        for (final menuButton in menuButtons)
          MenuButton(
            listTileName: menuButton["listTileName"],
            icon: menuButton["icon"],
          ),
      ],
    );
  }
}

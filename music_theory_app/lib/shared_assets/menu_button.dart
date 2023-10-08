import 'package:flutter/material.dart';

class MenuButton extends StatefulWidget {
  final String listTileName;
  final Icon icon;

  const MenuButton({
    super.key,
    required this.listTileName,
    required this.icon,
  });

  @override
  State<MenuButton> createState() => _MenuButtonState();
}

class _MenuButtonState extends State<MenuButton> {
  @override
  Widget build(BuildContext context) {
    final listTileName = widget.listTileName;
    final icon = widget.icon;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        onPressed: () {
          debugPrint("$listTileName pressed");
        },
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: icon,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(listTileName),
            ),
          ],
        ),
      ),
    );
  }
}

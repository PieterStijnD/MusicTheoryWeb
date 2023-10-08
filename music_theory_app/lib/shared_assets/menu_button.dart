import 'package:flutter/material.dart';

class MenuButton extends StatelessWidget {
  const MenuButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        debugPrint("ListTile");
      },
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.list),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("ListTile"),
          ),
        ],
      ),
    );
  }
}
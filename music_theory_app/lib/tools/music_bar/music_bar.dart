import 'package:flutter/material.dart';

class MusicChart extends StatelessWidget {
  final List<int> notes;

  const MusicChart({Key? key, required this.notes}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: ChartPainter(notes),
      child: Container(
        color: Colors.white,
        child: Text(
          'Notes: ${notes.join(', ')}',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}

class ChartPainter extends CustomPainter {
  final List<int> notes;

  ChartPainter(this.notes);

  @override
  void paint(Canvas canvas, Size size) {
    // Draw the staff
    canvas.drawLine(
      Offset(0, 0),
      Offset(size.width, 0),
      Paint()..color = Colors.black,
    );

    // Draw the notes
    for (var note in notes) {
      double x = note * 10;
      var y = size.height / 2;
      canvas.drawCircle(
        Offset(x, y),
        10,
        Paint()..color = Colors.red,
      );
    }
  }

  @override
  bool shouldRepaint(ChartPainter oldDelegate) {
    return true;
  }
}

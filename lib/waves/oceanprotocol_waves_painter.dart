import 'dart:math';
import 'package:flutter/material.dart';

class OceanProtocolWavesPainter extends CustomPainter {
  final double time;
  final List<Color> colors;

  const OceanProtocolWavesPainter({
    required this.time,
    required this.colors,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = const Color.fromARGB(0, 122, 114, 114)
      ..strokeWidth = 2.0
      ..style = PaintingStyle.stroke;

    final width = size.width;
    final height = size.height;
    final xScale = width * 0.02;
    final yScale = height / 30;

    for (int i = 0; i < 4; i++) {
      final Path path = Path();
      for (int j = 0; j < 200; j++) {
        final angle = j * 2 * pi / 150;
        final x = j * xScale;
        final y = cos(angle * 8 - (i * 2 * pi) / 10 + time) *
            max(0.4, pow((2 + cos(angle - time)) / 2, 4)) *
            yScale;

        if (j == 0) {
          path.moveTo(x, y);
        } else {
          path.lineTo(x, y);
        }
      }

      paint.color = colors[i % colors.length];
      canvas.drawPath(path, paint);
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

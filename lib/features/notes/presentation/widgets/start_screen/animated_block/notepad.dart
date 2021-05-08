import 'dart:ui';

import 'package:flutter/material.dart';

class Notepad extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(25.0),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
        child: CustomPaint(
          painter: ShapePainter(),
          child: Container(
            width: 160,
            height: 220,
          ),
        ),
      ),
    );
  }
}

class ShapePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paintRectangle = Paint()
      ..color = Color(0xFF2E2D3C).withOpacity(0.6)
      ..style = PaintingStyle.fill;

    var paintLines = Paint()
      ..color = Color(0xFF49495D)
      ..strokeWidth = 13
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    var paintArc = Paint()
      ..color = Color(0xFF53536B)
      ..strokeWidth = 5
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    canvas.drawRRect(
      RRect.fromRectAndRadius(
          Offset(0, 20) & Size(160, 200), Radius.circular(25.0)),
      paintRectangle,
    );

    double percent = 0.28;
    for (var i = 0; i < 4; i++) {
      if (i != 0) {
        percent += 0.17;
      }

      canvas.drawLine(
        Offset(30, size.height * percent),
        Offset(130, size.height * percent),
        paintLines,
      );
    }

    double arcPoint = 25;
    for (var i = 0; i < 5; i++) {
      if (i != 0) {
        arcPoint += 25;
      }

      final arc = Path();
      arc.moveTo(arcPoint, 25);
      arc.arcToPoint(
        Offset(arcPoint + 12, 18),
        radius: Radius.circular(1),
      );

      canvas.drawPath(arc, paintArc);
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

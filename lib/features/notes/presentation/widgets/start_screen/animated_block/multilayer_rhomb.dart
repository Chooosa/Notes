import 'package:flutter/material.dart';
import 'dart:math' as math;

class MultilayerRhomb extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -math.pi / 4,
      child: Container(
        width: 60,
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Color(0xFF00E2D2).withOpacity(0.3),
          boxShadow: [
            BoxShadow(
              color: Color(0xFF00E2D2).withOpacity(0.2),
              offset: Offset(6.0, 6.0),
            )
          ],
        ),
        child: Center(
          child: Container(
            width: 45,
            height: 45,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color(0xFF00E2D2).withOpacity(0.9),
              gradient: LinearGradient(
                colors: [Color(0xFF00E2D2), Color(0xFF6EEFFD)],
                begin: Alignment.centerRight,
                end: Alignment(-1.0, 1.0),
                // tileMode: TileMode.clamp,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

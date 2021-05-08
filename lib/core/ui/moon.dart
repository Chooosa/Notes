import 'package:flutter/material.dart';

class Moon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        color: Color(0xFF89543C),
        borderRadius: BorderRadius.circular(20),
        gradient: LinearGradient(
          colors: [Color(0xFF1F1D2A), Color(0xFF89543C)],
          begin: Alignment.center,
          end: Alignment(-1.0, -1.0),
          tileMode: TileMode.clamp,
        ),
      ),
    );
  }
}

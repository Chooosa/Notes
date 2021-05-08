import 'package:flutter/material.dart';

class MultilayerSquare extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        color: Color(0xFF8372EF).withOpacity(0.4),
        borderRadius: BorderRadius.circular(20),
        gradient: LinearGradient(
          colors: [Color(0xFF8372EF), Color(0xFFC89AF5)],
          begin: Alignment.centerRight,
          end: Alignment(-1.0, -1.0),
          // tileMode: TileMode.clamp,
        ),
      ),
      child: Center(
        child: Container(
          width: 48,
          height: 48,
          decoration: BoxDecoration(
            color: Color(0xFF8372EF).withOpacity(0.7),
            borderRadius: BorderRadius.circular(15.0),
            gradient: LinearGradient(
              colors: [Color(0xFF8372EF), Color(0xFFC89AF5)],
              begin: Alignment.centerRight,
              end: Alignment(-1.0, -1.0),
              // tileMode: TileMode.clamp,
            ),
          ),
          child: Center(
            child: Container(
              width: 35,
              height: 35,
              decoration: BoxDecoration(
                color: Color(0xFF8372EF).withOpacity(0.9),
                borderRadius: BorderRadius.circular(11),
                gradient: LinearGradient(
                  colors: [Color(0xFF8372EF), Color(0xFFC89AF5)],
                  begin: Alignment.centerRight,
                  end: Alignment(-1.0, -1.0),
                  // tileMode: TileMode.clamp,
                ),
              ),
              child: Image.asset(
                'assets/icons/edit-svg.png',
              ),
            ),
          ),
        ),
      ),
    );
  }
}

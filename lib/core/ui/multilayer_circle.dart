import 'package:flutter/material.dart';

class MultilayerCircle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        color: Color(0xFFEC817A).withOpacity(0.2),
        borderRadius: BorderRadius.circular(30),
        gradient: LinearGradient(
          colors: [Color(0xFFEC817A), Color(0xFFF3B896)],
          begin: Alignment.centerRight,
          end: Alignment(-1.0, -1.0),
          // tileMode: TileMode.clamp,
        ),
      ),
      child: Center(
        child: Container(
          width: 45,
          height: 45,
          decoration: BoxDecoration(
            color: Color(0xFFEC817A).withOpacity(0.4),
            borderRadius: BorderRadius.circular(22.5),
            gradient: LinearGradient(
              colors: [Color(0xFFEC817A), Color(0xFFF3B896)],
              begin: Alignment.centerRight,
              end: Alignment(-1.0, -1.0),
              // tileMode: TileMode.clamp,
            ),
          ),
          child: Center(
            child: Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                color: Color(0xFFEC817A).withOpacity(0.6),
                borderRadius: BorderRadius.circular(15),
                gradient: LinearGradient(
                  colors: [Color(0xFFEC817A), Color(0xFFF3B896)],
                  begin: Alignment.centerRight,
                  end: Alignment(-1.0, -1.0),
                  // tileMode: TileMode.clamp,
                ),
              ),
              child: Center(
                child: Container(
                  width: 15,
                  height: 15,
                  decoration: BoxDecoration(
                    color: Color(0xFFEC817A).withOpacity(0.8), //EC817A
                    borderRadius: BorderRadius.circular(7.5),
                    gradient: LinearGradient(
                      colors: [Color(0xFFEC817A), Color(0xFFF3B896)],
                      begin: Alignment.centerRight,
                      end: Alignment(-1.0, -1.0),
                      // tileMode: TileMode.clamp,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

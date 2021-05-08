import 'dart:ui';

import 'package:flutter/material.dart';

class StarDot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 2,
      height: 2,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(1),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.white.withOpacity(0.9),
            offset: Offset(0.0, 0.0),
            blurRadius: 3.0,
            spreadRadius: 1.5,
          ),
        ],
      ),
    );

    // return Stack(
    //   children: [
    //     ClipRect(
    //       child: BackdropFilter(
    //         filter: ImageFilter.blur(sigmaX: 20.0, sigmaY: 20.0),
    //         child: Container(
    //           width: 10,
    //           height: 10,
    //           decoration: BoxDecoration(
    //             borderRadius: BorderRadius.circular(5),
    //             color: Colors.white.withOpacity(0.6),
    //           ),
    //         ),
    //       ),
    //     ),
    //     Positioned(
    //       top: 2.5,
    //       left: 2.5,
    //       child: Container(
    //         width: 5,
    //         height: 5,
    //         decoration: BoxDecoration(
    //           borderRadius: BorderRadius.circular(2.5),
    //           color: Colors.red,
    //         ),
    //       ),
    //     )
    //   ],
    // );
    //

    // return ClipRect(
    //   child: Container(
    //     child: BackdropFilter(
    //       filter: ImageFilter.blur(sigmaX: 20.0, sigmaY: 20.0),
    //       child: Container(
    //         width: 10,
    //         height: 10,
    //         decoration: BoxDecoration(
    //           borderRadius: BorderRadius.circular(5),
    //           color: Colors.white.withOpacity(0.5),
    //         ),
    //         child: Container(
    //           width: 5,
    //           height: 5,
    //           decoration: BoxDecoration(
    //             borderRadius: BorderRadius.circular(2.5),
    //             color: Colors.white,
    //           ),
    //         ),
    //         // child: Container(
    //         //   width: 10,
    //         //   height: 10,
    //         //   color: Colors.white,
    //         // ),
    //       ),
    //     ),
    //   ),
    // );
  }
}

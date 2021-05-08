import 'dart:async';

import 'package:flutter/material.dart';
import 'package:notes/core/ui/moon.dart';
import 'package:notes/core/ui/multilayer_circle.dart';
import 'package:notes/core/ui/star_dot.dart';
import 'package:notes/features/notes/presentation/widgets/start_screen/animated_block/multilayer_rhomb.dart';
import 'package:notes/features/notes/presentation/widgets/start_screen/animated_block/multilayer_square.dart';
import 'package:notes/features/notes/presentation/widgets/start_screen/animated_block/notepad.dart';
import 'package:sensors/sensors.dart';

class AnimatedBlock extends StatefulWidget {
  AnimatedBlock({
    Key key,
  }) : super(key: key);

  @override
  _AnimatedBlockState createState() => _AnimatedBlockState();
}

class _AnimatedBlockState extends State<AnimatedBlock> {
  AccelerometerEvent acceleration;
  StreamSubscription<AccelerometerEvent> _streamSubscription;

  int elemMotionSensitivity = 6;
  int notepadMotionSensitivity = 2;

  @override
  void initState() {
    _streamSubscription =
        accelerometerEvents.listen((AccelerometerEvent event) {
      setState(() {
        acceleration = event;
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    _streamSubscription.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AnimatedPositioned(
          duration: Duration(milliseconds: 200),
          top: 218 + acceleration.z * elemMotionSensitivity,
          // bottom: acceleration.z * -elemMotionSensitivity,
          // right: acceleration.x * -elemMotionSensitivity,
          left: 77 + acceleration.x * elemMotionSensitivity,
          // top: 218,
          // left: 77,
          child: MultilayerCircle(),
        ),
        AnimatedPositioned(
          duration: Duration(milliseconds: 200),
          top: 120 + acceleration.z * elemMotionSensitivity,
          right: 90 + acceleration.x * -elemMotionSensitivity,
          // top: 120,
          // right: 90,
          child: MultilayerRhomb(),
        ),
        AnimatedPositioned(
          duration: Duration(milliseconds: 200),
          // top: (acceleration.z * notepadMotionSensitivity),
          // bottom: acceleration.z * -notepadMotionSensitivity,
          // right: acceleration.x * -notepadMotionSensitivity,
          // left: acceleration.x * notepadMotionSensitivity,
          child: Padding(
            padding: EdgeInsets.only(top: 30.0),
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: Center(
                child: Notepad(),
              ),
            ),
          ),
        ),
        AnimatedPositioned(
          duration: Duration(milliseconds: 200),
          top: 250 + acceleration.z * elemMotionSensitivity,
          right: 90 + acceleration.x * -elemMotionSensitivity,
          // top: 250,
          // right: 90,
          child: MultilayerSquare(),
        ),
        AnimatedPositioned(
          duration: Duration(milliseconds: 200),
          top: 50 + acceleration.z * elemMotionSensitivity,
          left: 50 + acceleration.x * elemMotionSensitivity,
          // top: 50,
          // left: 50,
          child: Moon(),
        ),
        AnimatedPositioned(
          duration: Duration(milliseconds: 200),
          top: 310 + acceleration.z * elemMotionSensitivity,
          left: 55 + acceleration.x * elemMotionSensitivity,
          // top: 310,
          // left: 55,
          child: StarDot(),
        ),
        AnimatedPositioned(
          duration: Duration(milliseconds: 200),
          top: 150 + acceleration.z * elemMotionSensitivity,
          left: 40 + acceleration.x * elemMotionSensitivity,
          // top: 150,
          // left: 40,
          child: StarDot(),
        ),
        AnimatedPositioned(
          duration: Duration(milliseconds: 200),
          top: 60 + acceleration.z * elemMotionSensitivity,
          right: 70 + acceleration.x * -elemMotionSensitivity,
          // top: 60,
          // right: 70,
          child: StarDot(),
        ),
        AnimatedPositioned(
          duration: Duration(milliseconds: 200),
          top: 270 + acceleration.z * elemMotionSensitivity,
          right: 50 + acceleration.x * -elemMotionSensitivity,
          // top: 270,
          // right: 50,
          child: StarDot(),
        ),
      ],
    );
  }
}

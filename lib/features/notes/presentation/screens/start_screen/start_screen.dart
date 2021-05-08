import 'package:flutter/material.dart';
import 'package:notes/features/notes/presentation/widgets/start_screen/animated_block/animated_block.dart';
import 'package:notes/features/notes/presentation/widgets/start_screen/description_block.dart';

class StartScreen extends StatefulWidget {
  @override
  _StartScreenState createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(top: 50.0),
                child: AnimatedBlock(),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(top: 50.0),
                child: DescriptionBlock(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

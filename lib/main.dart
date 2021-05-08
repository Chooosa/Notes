import 'package:flutter/material.dart';
import 'package:notes/features/notes/presentation/screens/start_screen/start_screen.dart';

void main() {
  runApp(Application());
}

class Application extends StatelessWidget {
  // final color = const Color(0xFF1F1D2A);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Notes',
      theme: ThemeData(
          primaryColor: Color(0xFF1F1D2A),
          visualDensity: VisualDensity.adaptivePlatformDensity,
          scaffoldBackgroundColor: Color(0xFF1F1D2A),
          fontFamily: 'MontserratAlternates'),
      home: StartScreen(),
    );
  }
}

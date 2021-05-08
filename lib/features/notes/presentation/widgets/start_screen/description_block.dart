import 'package:flutter/material.dart';
import 'package:notes/core/ui/custom_text.dart';

class DescriptionBlock extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: [
            CustomText(
              text: 'Daily notes',
              title: true,
              textAlign: TextAlign.center,
              textColor: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.w600,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
              child: Container(
                width: 320,
                child: CustomText(
                  text:
                      'Take notes, reminders, set targets, collect resourses, and secure privacy',
                  textAlign: TextAlign.center,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  lineHeight: 1.5,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: GestureDetector(
                onTap: () => print('click'),
                child: Container(
                  padding: EdgeInsets.all(12.0),
                  width: 160,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Color(0xFF7071C4),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Center(
                    child: CustomText(
                      text: 'Get Started',
                      title: true,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      textColor: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

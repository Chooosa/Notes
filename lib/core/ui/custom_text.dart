import 'package:flutter/material.dart';

class CustomText extends StatefulWidget {
  final String text;
  final Color textColor;
  final double fontSize;
  final FontWeight fontWeight;
  final TextAlign textAlign;
  final bool title;
  final double lineHeight;

  const CustomText({
    Key key,
    @required this.text,
    this.textColor,
    this.fontSize = 16,
    this.fontWeight = FontWeight.w400,
    this.textAlign = TextAlign.start,
    this.title = false,
    this.lineHeight,
  }) : super(key: key);

  @override
  _CustomTextState createState() => _CustomTextState();
}

class _CustomTextState extends State<CustomText> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.text,
      style: TextStyle(
        fontFamily: widget.title ? 'MontserratAlternates' : 'Mark',
        color: widget.textColor ?? Color(0xFF6D6C7A),
        fontWeight: widget.fontWeight,
        fontSize: widget.fontSize,
        height: widget.lineHeight,
      ),
      textAlign: widget.textAlign,
    );
  }
}

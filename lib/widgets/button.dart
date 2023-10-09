import 'package:flutter/material.dart';

class Button extends StatelessWidget {

  final String text;
  final Color bgColor;
  final Color textColor;

  const Button({
    super.key,
    required this.text,
    required this.bgColor,
    required this.textColor});

  @override
  Widget build(BuildContext context) {

    return Container(
          padding: EdgeInsets.symmetric(
          horizontal: 40,
          vertical: 15,
        ),
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(45),
        ),
        child: Text(text, style: TextStyle(fontSize: 18, color: textColor),)
    );
  }
}

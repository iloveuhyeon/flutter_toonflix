import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  String text;
  Color backgroundColor;
  Color textColor;

  Button({
    super.key,
    required this.text,
    required this.backgroundColor,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: backgroundColor, borderRadius: BorderRadius.circular(45)),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 50,
        ),
        child: Text(
          text,
          style: TextStyle(fontSize: 20, color: textColor),
        ),
      ),
    );
  }
}

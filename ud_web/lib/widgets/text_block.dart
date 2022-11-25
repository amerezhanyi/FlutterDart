import 'package:flutter/material.dart';

class TextBlock extends StatelessWidget {
  const TextBlock({
    Key? key,
    required this.text,
    required this.color,
    required this.fontSize,
  }) : super(key: key);

  final String text;
  final Color color;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      margin: const EdgeInsets.only(
        top: 10.0,
        bottom: 10.0,
      ),
      child: Text(
        text,
        style: TextStyle(
          color: color,
          fontSize: fontSize,
        ),
      ),
    );
  }
}

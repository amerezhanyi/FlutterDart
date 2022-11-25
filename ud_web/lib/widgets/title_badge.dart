import 'package:flutter/material.dart';

class TitleBadge extends StatelessWidget {
  const TitleBadge({
    Key? key,
    required this.text,
    required this.color,
  }) : super(key: key);

  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      width: 200.0,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        color: color,
      ),
      child: Text(text,
          style: const TextStyle(
            fontSize: 20.0,
            color: Colors.white,
          )),
    );
  }
}

import 'package:flutter/material.dart';

class FlatButton extends StatelessWidget {
  final String title;

  const FlatButton({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(5),
          ),
          child: Center(child: Text(title)),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class ButtonMain extends StatelessWidget {
  final String title;
  final VoidCallback onPress;

  const ButtonMain({super.key, required this.title, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: Theme.of(context).primaryColor,
      onPressed: onPress,
      child: Text(title),
    );
  }
}

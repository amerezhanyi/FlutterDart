import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  final VoidCallback callback;
  final String title;

  const MainButton({
    super.key,
    required this.callback,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: callback,
      child: Text(title.toUpperCase()),
    );
  }
}

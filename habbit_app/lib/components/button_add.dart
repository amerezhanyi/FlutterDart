import 'package:flutter/material.dart';

class ButtonAdd extends StatelessWidget {
  final Function()? onPress;

  const ButtonAdd({
    super.key,
    this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPress,
      child: const Icon(Icons.add),
    );
  }
}

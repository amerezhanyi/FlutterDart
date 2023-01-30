import 'package:flutter/material.dart';

class HabitBox extends StatelessWidget {
  const HabitBox({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.grey[900],
      content: const TextField(
        decoration: InputDecoration(
          enabledBorder:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
          focusedBorder:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
        ),
      ),
      actions: [
        MaterialButton(
          color: Colors.black,
          onPressed: () {},
          child: const Text(
            "Save",
            style: TextStyle(color: Colors.white),
          ),
        ),
        MaterialButton(
          color: Colors.black,
          onPressed: () => Navigator.of(context).pop(),
          child: const Text(
            "Cancel",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ],
    );
  }
}

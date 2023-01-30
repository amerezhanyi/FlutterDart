import 'package:flutter/material.dart';

class HabitTile extends StatelessWidget {
  final String title;
  final bool isCompleted;
  final Function(bool?)? onChange;

  const HabitTile({
    super.key,
    required this.title,
    required this.isCompleted,
    this.onChange,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        padding: const EdgeInsets.all(24),
        decoration: BoxDecoration(
          color: Colors.grey[100],
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          children: [
            Checkbox(value: isCompleted, onChanged: onChange),
            Text(title),
          ],
        ),
      ),
    );
  }
}

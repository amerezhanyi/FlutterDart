import 'package:flutter/material.dart';

class EmoticonFace extends StatelessWidget {
final String moodText;
final IconData moodEmoji;

  const EmoticonFace({super.key, required this.moodText, required this.moodEmoji});

  @override
  Widget build(BuildContext context) {
    return Column(

              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 Icon(
                  moodEmoji,
                  color: Colors.yellow,
                ),
                const SizedBox(height: 5),
                 Text(
                  moodText,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
              ],
            );
  }
}
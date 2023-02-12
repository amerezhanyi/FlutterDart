import 'package:flutter/material.dart';
import 'package:mental_health/widgets/emoticon_face.dart';

class MoodBox extends StatelessWidget {
  const MoodBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              'How do you feel today?',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Icon(Icons.more_horiz, color: Colors.white),
          ],
        ),
        const SizedBox(height: 20),
        // box with 4 mood icons: badly, fine, good, great
        Container(
          height: 100,
          decoration: BoxDecoration(
            color: Colors.blue[400],
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              EmoticonFace(
                  moodText: "Badly",
                  moodEmoji: Icons.sentiment_very_dissatisfied),
              EmoticonFace(
                  moodText: "Fine", moodEmoji: Icons.sentiment_dissatisfied),
              EmoticonFace(
                  moodText: "Good", moodEmoji: Icons.sentiment_satisfied),
              EmoticonFace(
                  moodText: "Great", moodEmoji: Icons.sentiment_very_satisfied),
            ],
          ),
        ),
      ]),
    );
  }
}

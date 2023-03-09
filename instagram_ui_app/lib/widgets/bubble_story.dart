import 'package:flutter/material.dart';

class BubbleStory extends StatelessWidget {
  final String imgUrl;
  final String title;

  const BubbleStory({super.key, required this.imgUrl, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          CircleAvatar(
            radius: 50,
            backgroundImage: NetworkImage(imgUrl),
          ),
          const SizedBox(height: 8),
          Text(title, style: const TextStyle(fontSize: 18)),
        ],
      ),
    );
  }
}

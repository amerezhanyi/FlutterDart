import 'package:flutter/material.dart';

class StackAvatar extends StatelessWidget {
  const StackAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: const Alignment(0.7, 0.7),
      children: [
        const CircleAvatar(
          backgroundImage: AssetImage('assets/images/pic1.jpg'),
          radius: 100,
        ),
        Positioned(
          top: 30,
          left: 30,
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.white54,
            ),
            child: const Text(
              'Forks are here',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
        ),
        Container(
          decoration: const BoxDecoration(
            color: Colors.white54,
          ),
          child: const Text(
            'and there',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }
}

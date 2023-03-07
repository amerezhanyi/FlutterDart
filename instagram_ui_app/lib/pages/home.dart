import 'package:flutter/material.dart';

class UserHomePage extends StatelessWidget {
  const UserHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text('Instagram'),
        actions: const [
          Icon(Icons.add_box_outlined),
          Icon(Icons.favorite_border),
          Icon(Icons.send),
        ],
      ),
      body: const Center(child: Text('Home')),
    );
  }
}

import 'package:flutter/material.dart';

class NavigationItem extends StatelessWidget {
  static final List<String> navigationItems = [
    "Home",
    "Blog",
    "New Post",
    "Registration",
    "Login",
  ];

  const NavigationItem({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 20.0,
          color: Colors.white,
        ),
      ),
    );
  }
}

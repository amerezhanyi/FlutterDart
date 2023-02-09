import 'package:flutter/material.dart';
import 'package:mental_health/widgets/mood_box.dart';
import 'package:mental_health/widgets/search_bar.dart';
import 'package:mental_health/widgets/header.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[800],
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              children: const [
                Header(),
                SearchBar(),
                MoodBox(),
              ],
            ),
          ),
        ));
  }
}

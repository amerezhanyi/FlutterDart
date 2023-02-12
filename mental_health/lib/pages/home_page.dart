import 'package:flutter/material.dart';

import '../widgets/footer.dart';
import '../widgets/bottom_box.dart';
import '../widgets/mood_box.dart';
import '../widgets/search_bar.dart';
import '../widgets/header.dart';

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
        bottomNavigationBar: const Footer(),
        body: SafeArea(
          child: Column(
            children: const [
              Header(),
              SearchBar(),
              MoodBox(),
              BottomBox(),
            ],
          ),
        ));
  }
}

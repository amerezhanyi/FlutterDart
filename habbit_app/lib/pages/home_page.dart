import "package:flutter/material.dart";
import "package:habbit_app/components/button_add.dart";
import "package:habbit_app/components/habit_box.dart";

import "../components/habit_tile.dart";

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List habits = [
    ["Morning run", false],
    ["Drink water", true],
    ["Exercise", false],
  ];
  bool habitCompleted = false;
  void checkboxTapped(bool? value, int index) {
    setState(() {
      habits[index][1] = value ?? true;
    });
  }

  void createNewHabit() {
    showDialog(
        context: context,
        builder: (context) {
          return const HabitBox();
        });
  }

  @override
  Widget build(BuildContext ctx) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      floatingActionButton: ButtonAdd(
        onPress: () => createNewHabit(),
      ),
      body: ListView.builder(
        itemCount: habits.length,
        itemBuilder: (context, index) => HabitTile(
          title: habits[index][0],
          isCompleted: habits[index][1],
          onChange: (value) => checkboxTapped(value, index),
        ),
      ),
    );
  }
}

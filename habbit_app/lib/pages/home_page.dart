import "package:flutter/material.dart";

import "../components/button_add.dart";
import "../components/habit_box.dart";
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

  final _habitBoxController = TextEditingController();
  void _onSave() {
    setState(() {
      habits.add([_habitBoxController.text, false]);
    });
    _habitBoxController.clear();
    Navigator.of(context).pop();
  }

  void createNewHabit() {
    showDialog(
        context: context,
        builder: (context) {
          return HabitBox(
            controller: _habitBoxController,
            onSave: _onSave,
          );
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
          settingTapped: (context) => _openHabitSettings(index),
          deleteTapped: (context) => _deleteHabit(index),
        ),
      ),
    );
  }

  _openHabitSettings(int index) {
    _habitBoxController.text = habits[index][0];
    showDialog(
        context: context,
        builder: (context) {
          return HabitBox(
              controller: _habitBoxController,
              onSave: () => _saveExistingHabit(index));
        });
  }

  _deleteHabit(int index) {
    setState(() {
      habits.removeAt(index);
    });
  }

  void _saveExistingHabit(int index) {
    setState(() {
      habits[index][0] = _habitBoxController.text;
    });
    _habitBoxController.clear();
    Navigator.of(context).pop();
  }
}

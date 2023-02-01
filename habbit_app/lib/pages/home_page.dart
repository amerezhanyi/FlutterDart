import "package:flutter/material.dart";
// import "package:shared_preferences/shared_preferences.dart";

import "../components/button_add.dart";
import "../components/habit_box.dart";
import "../components/habit_tile.dart";
import "../data/habit_database.dart";

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final HabitDatabase _habitDb = HabitDatabase();
  // final Future<SharedPreferences> _db = SharedPreferences.getInstance();
  List<dynamic> _habits = [];

  @override
  void initState() {
    _habitDb.loadInitData().then((data) {
      setState(() {
        _habits = data;
      });
    });

    super.initState();
  }

  bool habitCompleted = false;
  void checkboxTapped(bool? value, int index) {
    setState(() {
      _habits[index][1] = value ?? true;
    });
    _habitDb.updateDatabase(_habits);
  }

  final _habitBoxController = TextEditingController();
  void _onSave() {
    setState(() {
      _habits.add([_habitBoxController.text, false]);
    });
    _habitDb.updateDatabase(_habits);
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
        itemCount: _habits.length,
        itemBuilder: (context, index) => HabitTile(
          title: _habits[index][0],
          isCompleted: _habits[index][1],
          onChange: (value) => checkboxTapped(value, index),
          settingTapped: (context) => _openHabitSettings(index),
          deleteTapped: (context) => _deleteHabit(index),
        ),
      ),
    );
  }

  _openHabitSettings(int index) {
    _habitBoxController.text = _habits[index][0];
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
      _habits.removeAt(index);
    });
    _habitDb.updateDatabase(_habits);
  }

  void _saveExistingHabit(int index) {
    setState(() {
      _habits[index][0] = _habitBoxController.text;
    });
    _habitDb.updateDatabase(_habits);
    _habitBoxController.clear();
    Navigator.of(context).pop();
  }
}

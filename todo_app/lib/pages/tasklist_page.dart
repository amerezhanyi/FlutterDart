import "package:flutter/material.dart";
import 'package:todo_app/models/task.dart';

import "../task_list.dart";
import "../widgets/dialog_box.dart";
import "../widgets/task_tile.dart";

class TaskListPage extends StatefulWidget {
  const TaskListPage({super.key});

  @override
  State<TaskListPage> createState() => _TaskListPageState();
}

class _TaskListPageState extends State<TaskListPage> {
  final _controller = TextEditingController();

  void onChange(isCompleted, index) {
    print(">>> ${taskList[index].isCompleted} -> $isCompleted");
    setState(() {
      taskList[index].isCompleted = isCompleted ?? false;
    });
  }

  void saveNewTask() {
    setState(() {
      taskList.add(Task(title: _controller.text, isCompleted: false));
      _controller.clear();
    });
    Navigator.of(context).pop();
  }

  void createNewTask() {
    showDialog(
      context: context,
      builder: (context) {
        return DialogBox(
          controller: _controller,
          onSave: saveNewTask,
          onCancel: () => Navigator.of(context).pop(),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        title: const Text("TO DO"),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: taskList.length,
          itemBuilder: (context, index) => TaskTile(
            title: taskList[index].title,
            isCompleted: taskList[index].isCompleted,
            onChange: (isCompleted) => onChange(isCompleted, index),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: createNewTask,
        child: const Icon(Icons.add),
      ),
    );
  }
}

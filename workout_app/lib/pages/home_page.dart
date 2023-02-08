import "package:flutter/material.dart";
import "package:provider/provider.dart";
import "package:workout_app/data/workout_data.dart";

import "workout_page.dart";

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final newWorkoutNameController = TextEditingController();

  void createNewWorkout() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text(
          "Create new workout",
        ),
        content: TextField(
          controller: newWorkoutNameController,
        ),
        actions: [
          MaterialButton(
            onPressed: save,
            child: const Text("Save"),
          ),
          MaterialButton(
            onPressed: cancel,
            child: const Text("Cancel"),
          )
        ],
      ),
    );
  }

  void save() {
    Provider.of<WorkoutData>(context, listen: false)
        .addWorkout(newWorkoutNameController.text);
    newWorkoutNameController.clear();
    Navigator.pop(context);
  }

  void cancel() {
    newWorkoutNameController.clear();
    Navigator.pop(context);
  }

  void goToWorkoutPage(String workoutName) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => WorkoutPage(
            workoutName: workoutName,
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<WorkoutData>(
      builder: (context, value, child) => Scaffold(
        appBar: AppBar(
          title: const Text("Workout Tracker"),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: createNewWorkout,
          child: const Icon(Icons.add),
        ),
        body: ListView.builder(
          itemCount: value.getWorkoutList().length,
          itemBuilder: (context, index) => ListTile(
            title: Text(value.getWorkoutList()[index].name),
            trailing: IconButton(
                onPressed: () =>
                    goToWorkoutPage(value.getWorkoutList()[index].name),
                icon: const Icon(Icons.arrow_forward_ios)),
          ),
        ),
      ),
    );
  }
}

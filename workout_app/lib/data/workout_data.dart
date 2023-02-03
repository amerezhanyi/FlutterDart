import 'package:workout_app/models/exercise.dart';
import 'package:workout_app/models/workout.dart';

class WorkoutData {
  final List<Workout> workoutList = [
    Workout(
      name: "Upper Body",
      exercises: [
        Exercise(name: "Bicep Curls", weight: "10", reps: "10", sets: "3"),
        Exercise(name: "Head", weight: "2", reps: "10", sets: "3"),
      ],
    )
  ];

  List<Workout> getWorkoutList() => workoutList;

  int numberOfExercisesInWorkout(String workoutName) =>
      getRelevantWorkout(workoutName).exercises.length;

  void addWorkout(String name) {
    workoutList.add(Workout(name: name, exercises: []));
  }

  void addExercise(String workoutName, String exerciseName, String weight,
      String reps, String sets) {
    final workout = getRelevantWorkout(workoutName);
    workout.exercises.add(
        Exercise(name: exerciseName, weight: weight, reps: reps, sets: sets));
  }

  void checkOffExercise(String workoutName, String exerciseName) {
    final exercise = getRelevantExercise(workoutName, exerciseName);
    exercise.isCompleted = !exercise.isCompleted;
  }

  Workout getRelevantWorkout(String workoutName) =>
      workoutList.firstWhere((value) => value.name == workoutName);

  Exercise getRelevantExercise(String workoutName, String exerciseName) =>
      workoutList
          .firstWhere((workout) => workout.name == workoutName)
          .exercises
          .firstWhere((value) => value.name == exerciseName);
}

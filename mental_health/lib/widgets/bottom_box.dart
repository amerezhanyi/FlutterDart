import 'package:flutter/material.dart';
import 'package:mental_health/components/exercise_list.dart';

import 'exercise_box.dart';

class BottomBox extends StatelessWidget {
  const BottomBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Colors.grey[300],
        margin: const EdgeInsets.only(top: 20),
        padding: const EdgeInsets.only(left: 25, right: 25, top: 20),
        child: Column(
          children: [
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Exercises",
                    style: TextStyle(
                        color: Colors.grey[800],
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  Icon(
                    Icons.more_horiz,
                    color: Colors.grey[800],
                    size: 30,
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                children: exerciseList
                    .map(
                      (exercise) => ExerciseBox(
                        title: exercise.name,
                        duration: exercise.duration,
                        icon: exercise.icon,
                      ),
                    )
                    .toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

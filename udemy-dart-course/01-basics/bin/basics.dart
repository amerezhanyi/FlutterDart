import 'package:basics/hello_world.dart' as hello;
import 'package:basics/type.dart' as type;
import 'package:basics/control_flow.dart' as flow;
import 'package:basics/collections.dart' as collections;

void main(List<String> arguments) {
  // Section 2: Dart Basics
  hello.helloWorld();
  hello.variables();
  hello.exercise_02_06();
  hello.exercise_02_08();
  hello.exercise_02_13();
  hello.exercise_02_17();

  // Section 3: Dart Type System
  type.exercise_03_06();

  // Section 4: Control Flow
  flow.exercise_04_03();
  flow.exercise_04_06();
  flow.exercise_04_10();

  // Section 6: Collections
  collections.exercise_06_03();
  collections.exercise_06_08();
  collections.exercise_06_13();
  collections.exercise_06_15();
  collections.exercise_06_19();
}

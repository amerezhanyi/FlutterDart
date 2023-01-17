import 'package:basics/hello_world.dart' as hello;
import 'package:basics/type.dart' as type;
import 'package:basics/control_flow.dart' as flow;
import 'package:basics/collections.dart' as collections;
import 'package:basics/functions.dart' as functions;
import 'package:basics/classes.dart' as classes;
import 'package:basics/mixins.dart' as mixins;
import 'package:basics/exceptions.dart' as exceptions;
import 'package:basics/async.dart' as async;

Future<void> main(List<String> arguments) async {
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

  // Sections 9: Functions #1
  functions.exercise_09_05();
  functions.exercise_09_09();

  // Sections 10: Functions #2
  functions.exercise_10_11();
  functions.exercise_10_12();

  // Section 11: Classes #1
  classes.exercise_11_07();

  // Section 12: Classes #2
  classes.exercise_12_07();
  classes.exercise_12_12();
  classes.exercise_12_17();

  // Section 14: Mixins
  mixins.exercise_14_06();

  // Section 15: Exceptions
  exceptions.exercise_15_05();

  // Section 16: Async
  await async.exercise_16_05();
  await async.exercise_16_08();
}

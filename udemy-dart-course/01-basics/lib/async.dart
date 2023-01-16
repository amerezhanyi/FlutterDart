Future<void> exercise_16_05() async {
  print("--- Exercise 16.05 ---");
  for (var i = 3; i >= 0; i--) {
    await Future.delayed(Duration(seconds: 1), () => print(i));
  }
  print("Done");
}

Stream<String> asyncFizzBuzz() async* {
  for (var i = 1; i <= 15; i++) {
    await Future.delayed(Duration(milliseconds: 500));
    if (i % 3 == 0 && i % 5 == 0) {
      yield ("fizz buzz");
    } else if (i % 3 == 0) {
      yield ("fizz");
    } else if (i % 5 == 0) {
      yield ("buzz");
    } else {
      yield ("$i");
    }
  }
}

Future<void> exercise_16_08() async {
  print("--- Exercise 16.08 ---");
  final stream = asyncFizzBuzz();
  await for (var value in stream) {
    print(value);
  }
}

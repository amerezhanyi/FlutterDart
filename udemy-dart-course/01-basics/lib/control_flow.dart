void exercise_04_03() {
  print("--- Exercise 04.03 ---");
  const netSalary = 2000;
  const expenses = 1800;
  if (netSalary > expenses) {
    print("You have saved \$${netSalary - expenses} this month");
  } else if (expenses > netSalary) {
    print("You have lost \$${expenses - netSalary} this month");
  } else {
    print("Your balance hasn't changed");
  }
}

void exercise_04_06() {
  print("--- Exercise 04.06 ---");
  for (int i = 1; i <= 15; i++) {
    if (i % 3 == 0 && i % 5 == 0) {
      print("fizz buzz");
    } else if (i % 3 == 0) {
      print("fizz");
    } else if (i % 5 == 0) {
      print("buzz");
    } else {
      print(i);
    }
  }
}

enum Operation { plus, minus, multiply, divide }

void exercise_04_10() {
  print("--- Exercise 04.10 ---");
  const a = 4;
  const b = 2;
  const op = Operation.divide;
  switch (op) {
    case Operation.plus:
      print("$a + $b = ${a + b}");
      break;
    case Operation.minus:
      print("$a - $b = ${a - b}");
      break;
    case Operation.multiply:
      print("$a * $b = ${a * b}");
      break;
    case Operation.divide:
      print("$a / $b = ${a / b}");
      break;
  }
}

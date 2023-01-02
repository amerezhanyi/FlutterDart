void helloWorld() {
  print("Hello World");
  print("I like learning");
}

void variables() {
  String name = "My name";
  print(name);
  int age = 99;
  print(age);
  double height = 1.84;
  print(height);
  bool likeMe = false;
  print(likeMe);
}

void exercise_02_06() {
  print("--- Exercise 02.06 ---");
  String firstName = "Andrea";
  String lastName = "Bizzotto";
  int age = 36;
  double height = 1.84;
  print(firstName);
  print(lastName);
  print(age);
  print(height);
}

void exercise_02_08() {
  print("--- Exercise 02.08 ---");
  double temperature = 20;
  int value = 2;
  String pizza = 'pizza';
  String pasta = 'pasta';
  print("The temperature is ${temperature}C");
  print("2 plus 2 makes ${value + value}");
  print("I like $pizza and $pasta");
}

void exercise_02_13() {
  print("--- Exercise 02.13 ---");
  String title = 'Dart course';
  print(title);
  print(title.toUpperCase());
  print(title.toLowerCase());
}

void exercise_02_17() {
  print("--- Exercise 02.17 ---");
  double tempFarenheit = 86;
  double tempCelsius = (tempFarenheit - 32) / 1.8;
  print("${tempFarenheit}F = ${tempCelsius.toStringAsFixed(1)}C");
}

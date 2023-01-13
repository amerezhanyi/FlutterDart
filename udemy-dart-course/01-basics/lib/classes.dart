class Person {
  Person({
    required this.name,
    required this.age,
    required this.height,
  });
  final String name;
  final int age;
  final double height;

  void printDescription() {
    print("My name is $name. I'm $age years old, I'm $height meters tall.");
  }
}

void exercise_11_07() {
  print("--- Exercise 11.07 ---");

  final person = {'name': 'Andrea', 'age': 36, 'height': 1.84};
  print(
      "My name is ${person['name']}. I'm ${person['age']} years old, I'm ${person['height']} meters tall.");

  final p1 = Person(name: 'Me', age: 18, height: 1.5);
  p1.printDescription();
}

class Restaurant {
  const Restaurant({
    required this.name,
    required this.cuisine,
    required this.ratings,
  });
  final String name;
  final String cuisine;
  final List<double> ratings;

  int get numRatings => ratings.length;
  double avgRating() {
    if (ratings.isEmpty) {
      return 0;
    }
    return ratings.reduce((value, element) => value + element) / ratings.length;
  }
}

void exercise_11_13() {
  print("--- Exercise 11.13 ---");
}

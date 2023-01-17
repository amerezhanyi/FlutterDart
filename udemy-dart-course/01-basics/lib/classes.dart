import 'dart:math';

import 'package:equatable/equatable.dart';

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

abstract class Shape {
  double get area;
  double get perimeter;

  void printValues() {
    print('area: $area, perimeter: $perimeter');
  }
}

class Square extends Shape {
  Square(this.side);
  final double side;

  @override
  double get area => side * side;

  @override
  double get perimeter => 4 * side;
}

class Circle extends Shape {
  Circle(this.radius);
  final double radius;

  @override
  double get area => pi * radius * radius;

  @override
  double get perimeter => 2 * pi * radius;
}

void exercise_12_07() {
  print("--- Exercise 12.07 ---");
  final shapes = [
    Square(3),
    Circle(4),
  ];
  shapes.forEach((shape) => shape.printValues());
}

class Point extends Equatable {
  const Point(this.x, this.y);
  final int x;
  final int y;

  Point operator +(Point other) {
    return Point(x + other.x, y + other.y);
  }

  Point operator *(int value) {
    return Point(x * value, y * value);
  }

  @override
  List<Object?> get props => [x, y];

  @override
  bool? get stringify => true;
}

void exercise_12_12() {
  print("--- Exercise 12.12 ---");
  print(Point(1, 1) + Point(2, 0)); // should print: Point(3, 1)
  print(Point(2, 1) * 5); // should print: Point(10, 5)
}

class Human {
  Human({required this.name, required this.age});
  final String name;
  final int age;

  factory Human.fromJson(Map<String, Object> json) {
    final name = json["name"];
    final age = json["age"];

    if (name is String && age is int) {
      return Human(name: name, age: age);
    }
    throw StateError("Couldn't read name or age");
  }

  Map<String, Object> toJson() {
    return {"name": name, "age": age};
  }
}

void exercise_12_17() {
  print("--- Exercise 12.17 ---");
  final person = Human.fromJson({
    'name': 'Andrea',
    'age': 36,
  });
  final json = person.toJson();
  print(json);
}

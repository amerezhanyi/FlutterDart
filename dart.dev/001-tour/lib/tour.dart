int calculate() {
  return 6 * 7;
}

// Define a function.
void printInteger(int aNumber) {
  print('The number is $aNumber.'); // Print to console.
}

class Point {
  double? x; // Declare instance variable x, initially null.
  double? y; // Declare y, initially null.
  double? z; // Declare z, initially null.

  @override
  String toString() {
    return "Point(x: $x, y: $y, z: $z)";
  }
}

void cascadeExample() {
  var point = Point()
    ..x = 1.0
    ..y = 5.0;

  print("cascade: $point");
}

class IntPoint {
  int? x, y;

  IntPoint(this.x, this.y);

  @override
  String toString() {
    return "Point(x: $x, y: $y)";
  }

  static fromJson(Map<String, int> map) {
    return IntPoint(map["x"] ?? 0, map["y"] ?? 0);
  }
}

class ImmutablePoint {
  final int x, y;

  const ImmutablePoint(this.x, this.y);

  @override
  String toString() {
    return "Point(x: $x, y: $y)";
  }
}

void classFactory() {
  var p1 = IntPoint(2, 2);
  var p2 = IntPoint.fromJson({'x': 1, 'y': 2});

  print("p1: $p1; p2: $p2");

  var p3 = const ImmutablePoint(0, 1);
  print("p3: $p3");
}

class Person {
  String? firstName;

  Person.fromJson(Map data) {
    print('in Person');
  }
}

class Employee extends Person {
  // Person does not have a default constructor;
  // you must call super.fromJson().
  Employee.fromJson(super.data) : super.fromJson() {
    print('in Employee');
  }
}

void employeeClassRunner() {
  var employee = Employee.fromJson({});
  print(employee);
  // Prints:
  // in Person
  // in Employee
  // Instance of 'Employee'
}

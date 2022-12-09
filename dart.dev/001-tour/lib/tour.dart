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
  int? x;
  int? y;

  IntPoint(int i, int j);

  @override
  String toString() {
    return "Point(x: $x, y: $y)";
  }

  static fromJson(Map<String, int> map) {
    return IntPoint(map["x"] ?? 0, map["y"] ?? 0);
  }
}

void classFactory() {
  var p1 = IntPoint(2, 2);
  var p2 = IntPoint.fromJson({'x': 1, 'y': 2});

  print("p1: $p1; p2: $p2");
}

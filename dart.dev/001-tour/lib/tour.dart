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

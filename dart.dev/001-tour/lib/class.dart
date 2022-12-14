import 'dart:math';

enum Color {
  red,
  green,
  blue,
}

class Point {
  final double x;
  final double y;
  final double distanceFromOrigin;
  Color? color;

  Point(this.x, this.y, [this.color])
      : distanceFromOrigin = sqrt(x * x + y * y);

  double distanceTo(Point other) {
    var dx = x - other.x;
    var dy = y - other.y;
    return sqrt(dx * dx + dy * dy);
  }

  @override
  String toString() {
    return "Point($x, $y):$color";
  }
}

class Vector {
  final int x, y;

  Vector(this.x, this.y);

  Vector operator +(Vector v) => Vector(x + v.x, y + v.y);
  Vector operator -(Vector v) => Vector(x - v.x, y - v.y);

  @override
  bool operator ==(Object other) =>
      other is Vector && x == other.x && y == other.y;

  @override
  int get hashCode => Object.hash(x, y);

  @override
  String toString() {
    return "Vector($x, $y)";
  }
}

void pointRunner() {
  var p = Point(2, 3, Color.red);
  print(p.distanceFromOrigin);

  var np = Point(3, 4);
  print("distance from $np to $p is ${np.distanceTo(p)}");

  final v = Vector(2, 3);
  final w = Vector(2, 2);

  print("Plus: ${v + w} == Vector(4, 5)");
  print("Minus: ${v - w} == Vector(0, 1)");
}

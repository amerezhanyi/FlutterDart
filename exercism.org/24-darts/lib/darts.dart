import 'dart:math';

class Darts {
  static const centerPoint = Point(0, 0);

  int score(double x, double y) {
    Point dartPosition = Point(x, y);
    final distance = dartPosition.distanceTo(centerPoint);

    if (distance <= 1) {
      return 10;
    } else if (distance <= 5) {
      return 5;
    } else if (distance <= 10) {
      return 1;
    }
    return 0;
  }
}

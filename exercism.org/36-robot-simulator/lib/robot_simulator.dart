import 'package:robot_simulator/orientation.dart';
import 'package:robot_simulator/position.dart';

class Robot {
  final Position position;
  Orientation orientation;

  Robot(this.position, this.orientation);

  void move(String directions) {
    int rotation = this.orientation.index;

    void rotate(String direction) {
      direction == "R" ? rotation++ : rotation--;
      if (rotation == 4 || rotation == -4) rotation = 0;
      if (rotation < 0) {
        rotation == -3
            ? rotation = 1
            : rotation == -2
                ? rotation = 2
                : rotation = 3;
      }
      this.orientation = Orientation.values[rotation];
    }

    directions.split("").forEach((direction) {
      if (direction == "R" || direction == "L") rotate(direction);
      if (direction == "A") {
        switch (rotation) {
          case 0:
            this.position.y++;
            break;
          case 1:
            this.position.x++;
            break;
          case 2:
            this.position.y--;
            break;
          case 3:
            this.position.x--;
            break;
          default:
        }
      }
    });
  }
}

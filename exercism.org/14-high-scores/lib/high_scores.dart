import 'dart:math';

class HighScores {
  List<int> list = [];
  List<int> copy = [];

  HighScores(List<int> list) {
    this.list = list;
  }

  List<int> get scores => this.list;

  int latest() {
    return list.last;
  }

  int personalBest() {
    return list.reduce(max);
  }

  List<int> personalTopThree() {
    copy = [...list];
    copy.sort(((a, b) => b - a));
    return copy.sublist(0, min(copy.length, 3));
  }
}

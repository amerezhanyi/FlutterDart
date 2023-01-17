extension Range on int {
  List<int> rangeTo(int upTo) {
    if (upTo < this) {
      return [];
    }
    var list = [this];
    for (var i = this + 1; i <= upTo; i++) {
      list.add(i);
    }
    return list;
  }
}

void exercise_14_06() {
  print("--- Exercise 14.06 ---");
  for (var i in 1.rangeTo(5)) {
    print(i);
  }
}

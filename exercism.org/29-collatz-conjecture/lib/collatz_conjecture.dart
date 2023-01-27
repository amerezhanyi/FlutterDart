class CollatzConjecture {
  int steps(int startNumber) {
    if (startNumber < 1)
      throw ArgumentError("Only positive integers are allowed");
    var n = startNumber;
    var i = 0;

    while (n != 1) {
      if (n % 2 == 0)
        n ~/= 2;
      else
        n = 3 * n + 1;

      i++;
    }
    return i;
  }
}

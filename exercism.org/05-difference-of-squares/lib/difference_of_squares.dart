class DifferenceOfSquares {
  int squareOfSum(int i) {
    int res = 0;
    for (int j = 1; j <= i; j++) {
      res += j;
    }
    return res * res;
  }

  int sumOfSquares(int i) {
    int res = 0;
    for (int j = 1; j <= i; j++) {
      res += j * j;
    }
    return res;
  }

  int differenceOfSquares(int i) {
    return squareOfSum(i) - sumOfSquares(i);
  }
}

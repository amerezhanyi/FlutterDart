class PascalsTriangle {
  List<List<int>> rows(int numOfRows) {
    if (numOfRows == 0) return [];

    final result = <List<int>>[];
    for (var i = 1; i <= numOfRows; i++) {
      result.add(List.generate(i, (j) => pascalFormula(i - 1, j)));
    }
    return result;
  }

  int factorial(int n) {
    if (n == 0 || n == 1) return 1;
    return n * factorial(n - 1);
  }

  int pascalFormula(int n, int k) =>
      factorial(n) ~/ (factorial(k) * factorial(n - k));
}

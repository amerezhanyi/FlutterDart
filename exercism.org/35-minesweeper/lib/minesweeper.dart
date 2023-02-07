class Minesweeper {
  late List<String> annotated = [];
  final bomb = '*';

  int bombCount(List<String>? s, int j) {
    int b = 0;
    if (s != null) {
      String? l = (j > 0) ? s[j - 1] : null;
      String? m = s[j];
      String? r = (j < s.length - 1) ? s[j + 1] : null;

      b += (l == '*') ? 1 : 0;
      b += (m == '*') ? 1 : 0;
      b += (r == '*') ? 1 : 0;
    }
    return b;
  }

  Minesweeper(List<String> a) {
    for (var i = 0; i < a.length; i++) {
      late List<String>? prevLine;
      late List<String>? nextLine;
      var currentLine = a[i].split('');

      prevLine = (i > 0) ? a[i - 1].split('') : null;
      nextLine = (i < a.length - 1) ? a[i + 1].split('') : null;

      for (var j = 0; j < currentLine.length; j++) {
        if (currentLine[j] != bomb) {
          int b = bombCount(currentLine, j) +
              bombCount(prevLine, j) +
              bombCount(nextLine, j);

          if (b > 0) currentLine[j] = b.toString();
        }
      }
      this.annotated.add(currentLine.join());
    }
  }
}

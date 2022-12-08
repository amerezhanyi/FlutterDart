class Hamming {
  int distance(String s, String t) {
    if (s.length != t.length) {
      throw new ArgumentError("strands must be of equal length");
    }

    int result = 0;

    for (int i = 0; i < s.length; i++) {
      if (s[i] != t[i]) {
        result++;
      }
    }

    return result;
  }
}

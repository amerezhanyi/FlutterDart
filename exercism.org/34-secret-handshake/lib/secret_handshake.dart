class SecretHandshake {
  final codes = ['wink', 'double blink', 'close your eyes', 'jump'];

  List<String> commands(int code) {
    List<String> result = [];
    int i = 0;

    while (code > 0) {
      int r = code % 2;
      if (r == 1) {
        if (i == 4) {
          result = result.reversed.toList();
        } else {
          result.add(codes[i]);
        }
      }

      code = code ~/ 2;
      i += 1;
    }

    return result;
  }
}

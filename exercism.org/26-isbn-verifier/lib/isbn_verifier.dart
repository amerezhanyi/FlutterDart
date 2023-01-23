bool isValid(String s) {
  final string = s.replaceAll("-", "").split("").reversed.toList();

  if (string.length != 10 || string.contains("X") && string.indexOf("X") != 0)
    return false;

  var res = 0;
  for (var i = 0; i < 10; i++) {
    final d = string[i] == "X" ? 10 : int.tryParse(string[i]);
    if (d == null) return false;
    res += d * (i + 1);
  }
  return res % 11 == 0;
}

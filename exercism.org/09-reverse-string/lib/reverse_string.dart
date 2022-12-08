String reverse(String str) {
  String result = "";

  str.split("").forEach((element) {
    result = element + result;
  });

  return result;
}

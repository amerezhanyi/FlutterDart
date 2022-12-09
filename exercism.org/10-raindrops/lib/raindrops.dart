class Raindrops {
  String convert(int i) {
    if (i % 3 != 0 && i % 5 != 0 && i % 7 != 0) {
      return i.toString();
    }

    String result = "";
    if (i % 3 == 0) {
      result += "Pling";
    }
    if (i % 5 == 0) {
      result += "Plang";
    }
    if (i % 7 == 0) {
      result += "Plong";
    }

    return result;
  }
}

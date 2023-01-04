class Isogram {
  bool isIsogram(String s) {
    if (s.isEmpty) return true;

    final word = s.replaceAll(RegExp(r"\s|-"), "").toLowerCase();
    final isogram = word.split("").toSet();

    return word.length == isogram.length;
  }
}

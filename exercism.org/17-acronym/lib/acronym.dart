class Acronym {
  String abbreviate(String s) {
    return s
        .replaceAll(RegExp(r"'|_"), "")
        .split(RegExp(r"\s|-"))
        .map((word) => word.isEmpty ? "" : word[0])
        .join("")
        .toUpperCase();
  }
}

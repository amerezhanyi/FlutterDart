class RnaTranscription {
  String toRna(String s) {
    return s
        .replaceAll("G", "c")
        .replaceAll("C", "g")
        .replaceAll("T", "a")
        .replaceAll("A", "u")
        .toUpperCase();
  }
}

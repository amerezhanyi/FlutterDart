class WordCount {
  Map<String, int> countWords(String str) {
    Map<String, int> listOfWords = {};
    final re = RegExp(r"\s|,");
    List<String> words = str.toLowerCase().split(re);

    for (String word in words) {
      String wordCleared = word.replaceAll(RegExp(r"[.:!&@$%^&]|^'|'$"), "");
      if (wordCleared.isEmpty) {
        continue;
      }
      int num = listOfWords[wordCleared] ?? 0;

      listOfWords[wordCleared] = num + 1;
    }

    return listOfWords;
  }
}

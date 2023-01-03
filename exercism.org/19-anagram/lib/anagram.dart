class Anagram {
  List<String> findAnagrams(String s, List<String> list) {
    List<String> result = [];
    var sAsList = s.toLowerCase().split("");
    sAsList.sort();
    final myWord = sAsList.join("");

    for (final word in list) {
      var candidate = word.toLowerCase().split("");
      candidate.sort();
      final theCandidate = candidate.join("");
      if (myWord == theCandidate && s.toLowerCase() != word.toLowerCase()) {
        result.add(word);
      }
    }

    return result;
  }
}

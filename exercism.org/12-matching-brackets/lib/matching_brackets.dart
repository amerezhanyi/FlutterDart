class MatchingBrackets {
  bool isPaired(String s) {
    if (s.isEmpty) {
      return true;
    }

    List<String> stack = [];
    String openBrackets = "{([";
    String closingBrackets = "})]";
    Map<String, String> brackets = {
      "}": "{",
      ")": "(",
      "]": "[",
    };

    s.split("").forEach((element) {
      if (openBrackets.contains(element)) {
        stack.add(element);
      } else if (closingBrackets.contains(element)) {
        try {
          if (stack.last == brackets[element]) {
            stack.removeLast();
          } else {
            stack.add(element);
          }
        } catch (e) {
          stack.add(element);
        }
      }
    });

    return stack.isEmpty;
  }
}

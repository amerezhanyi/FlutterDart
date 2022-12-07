class Bob {
  String response(String s) {
    String answer = "Whatever.";

    if (s.trim().isEmpty) {
      answer = "Fine. Be that way!";
    } else if (s.endsWith("?") &&
        s.contains(RegExp(r"[a-zA-Z]")) &&
        s.toUpperCase() == s) {
      answer = "Calm down, I know what I'm doing!";
    } else if (s.trim().endsWith("?")) {
      answer = "Sure.";
    } else if (!s.contains(RegExp(r"[a-zA-Z]"))) {
      answer = "Whatever.";
    } else if (s.toUpperCase() == s) {
      answer = "Whoa, chill out!";
    }

    return answer;
  }
}

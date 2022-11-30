String twoFer([String name = "you"]) {
  if (name != "you") {
    return "One for " + name + ", and one for me.";
  }
  return "One for you, one for me.";
}

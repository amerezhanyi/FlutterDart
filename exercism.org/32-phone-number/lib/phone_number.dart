class PhoneNumber {
  String clean(String str) {
    if (str.contains(RegExp(r"[a-z]")))
      throw FormatException("letters not permitted");
    if (str.contains(RegExp(r"[@:!]")))
      throw FormatException("punctuations not permitted");
    final phone = str.replaceAll(new RegExp(r"\D"), "");
    print(">>> $phone");
    if (phone.startsWith("0"))
      throw FormatException("area code cannot start with zero");
    if (phone.length < 10) throw FormatException("incorrect number of digits");
    if (phone.length > 11) throw FormatException("more than 11 digits");

    if (phone.length == 11) {
      if (phone.substring(1).startsWith("0"))
        throw FormatException("area code cannot start with zero");
      if (phone.substring(1).startsWith("1"))
        throw FormatException("area code cannot start with one");
      if (!phone.startsWith("1"))
        throw FormatException("11 digits must start with 1");
      if (phone.substring(4).startsWith("0"))
        throw FormatException("exchange code cannot start with zero");
      if (phone.substring(4).startsWith("1"))
        throw FormatException("exchange code cannot start with one");
      if (phone.startsWith("1")) return phone.substring(1);
    }

    if (phone.length == 10) {
      if (phone.startsWith("1"))
        throw FormatException("area code cannot start with one");
      if (phone.substring(3).startsWith("0"))
        throw FormatException("exchange code cannot start with zero");
      if (phone.substring(3).startsWith("1"))
        throw FormatException("exchange code cannot start with one");
    }

    return phone;
  }
}

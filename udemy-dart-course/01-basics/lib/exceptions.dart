// Desired output:
// me@example.com
// FormatException: example.com doesn't contain the @ symbol
class EmailAddress {
  EmailAddress(this.email) {
    if (!email.contains("@")) {
      throw FormatException("$email doesn't contain the @ symbol");
    } else if (email.isEmpty) {
      throw FormatException("email can't be empty");
    }
  }
  final String email;
}

void exercise_15_05() {
  print("--- Exercise 15.05 ---");
  try {
    print(EmailAddress('me@example.com'));
    print(EmailAddress('example.com'));
    print(EmailAddress(''));
  } on FormatException catch (e) {
    print(e);
  }
}

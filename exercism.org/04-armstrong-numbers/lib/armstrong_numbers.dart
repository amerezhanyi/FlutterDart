class ArmstrongNumbers {
  bool isArmstrongNumber(String number) {
    BigInt res = BigInt.from(0);
    final List<String> asWord = number.split("");
    final int exponent = asWord.length;

    for (String w in asWord) {
      res += BigInt.from(int.parse(w)).pow(exponent);
      print('>>> $res');
    }

    return number == res.toString();
  }
}

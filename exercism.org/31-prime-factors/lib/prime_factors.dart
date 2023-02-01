class PrimeFactors {
  List<int> factors(int number) {
    if (number < 2) return [];

    int factor = 2;
    List<int> factors = [];

    while (number / factor != 1) {
      if (number % factor == 0) {
        factors.add(factor);
        number = number ~/ factor;
        factor = 2;
      } else {
        factor++;
      }
    }
    factors.add(factor);

    return factors;
  }
}

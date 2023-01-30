class NthPrime {
  int prime(int nth) {
    if (nth <= 0) {
      throw ArgumentError("There is no zeroth prime");
    }
    int counter = 0;
    int i = 2;

    while (counter < nth) {
      if (_isPrime(i)) counter++;
      i++;
    }
    return i - 1;
  }

  bool _isPrime(int N) {
    for (var i = 2; i <= N / i; ++i) {
      if (N % i == 0) {
        return false;
      }
    }
    return true;
  }
}

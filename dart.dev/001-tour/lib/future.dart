Future<String> lookUpVersion() async => '1.0.0';

Stream<int> asynchronousNaturalsTo(int n) async* {
  int k = 0;
  while (k < n) {
    yield k++;
  }
}

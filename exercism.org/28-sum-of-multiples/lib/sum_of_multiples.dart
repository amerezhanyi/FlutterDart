import 'package:collection/collection.dart';

class SumOfMultiples {
  int sum(List<int> multipliers, int limit) {
    final result = <int>[];

    for (int i = 1; i < limit; i++) {
      multipliers.forEach((x) {
        if (x != 0 && i % x == 0 && !result.contains(i)) result.add(i);
      });
    }

    return result.sum;
  }
}

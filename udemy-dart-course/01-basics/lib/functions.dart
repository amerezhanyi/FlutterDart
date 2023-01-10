void exercise_09_05() {
  print("--- Exercise 09.05 ---");

  double sum(List<double> values) {
    var sum = 0.0;
    for (var value in values) {
      sum += value;
    }
    return sum;
  }

  print(sum([1, 2]));
}

void exercise_09_09() {
  print("--- Exercise 09.09 ---");
  const pizzaPrices = {
    'margherita': 5.5,
    'pepperoni': 7.5,
    'vegetarian': 6.5,
  };
  const order = ['margherita', 'pepperoni', 'pineapple'];
  var total = 0.0;
  for (var item in order) {
    final price = pizzaPrices[item];
    if (price != null) {
      total += price;
    }
  }
  print('Total: \$$total');
}

void exercise_10_11() {
  print("--- Exercise 10.11 ---");

  List<T> where<T>(List<T> items, Function(T) f) {
    var result = <T>[];
    for (var item in items) {
      if (f(item)) {
        result.add(item);
      }
    }
    return result;
  }

  const list = [1, 2, 3, 4];
  final odd = where<int>(list, (value) => value % 2 == 1);
  print(odd);
}

void exercise_10_12() {
  print("--- Exercise 10.12 ---");

  T firstWhere<T>(List<T> items, bool Function(T) f,
      {required T Function() orElse}) {
    for (var item in items) {
      if (f(item)) {
        return item;
      }
    }
    return orElse();
  }

  const list = [1, 2, 3, 4];
  final result = firstWhere(list, (x) => x == 5, orElse: () => -1);
  print(result);
}

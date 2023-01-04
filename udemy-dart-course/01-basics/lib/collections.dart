void exercise_06_03() {
  print("--- Exercise 06.03 ---");
  var values = [1, 3, 7, 9];
  var sum = 0;
  for (int value in values) {
    sum += value;
  }
  print("Sum: $sum");
}

void exercise_06_08() {
  print("--- Exercise 06.08 ---");
  const a = {1, 3};
  const b = {3, 5};
  var union = a.union(b).difference(a.intersection(b));
  var sum = 0;
  for (int x in union) {
    sum += x;
  }
  print("Sum of $union: $sum");
}

void exercise_06_13() {
  print("--- Exercise 06.13 ---");
  const pizzaPrices = {
    'margherita': 5.5,
    'pepperoni': 7.5,
    'vegetarian': 6.5,
  };
  const order = ['margherita', 'pepperoni', 'pineapple'];
  var total = 0.0;
  for (var item in order) {
    if (!pizzaPrices.containsKey(item)) {
      print("$item pizza is not on the menu");
      continue;
    }
    total += pizzaPrices[item] as double;
  }
  print("Total: \$$total");
}

void exercise_06_15() {
  print("--- Exercise 06.15 ---");
  var restaurants = [
    {
      'name': 'Pizza Mario',
      'cuisine': 'Italian',
      'ratings': [4.0, 3.5, 4.5],
    },
    {
      'name': 'Chez Anne',
      'cuisine': 'French',
      'ratings': [5.0, 4.5, 4.0],
    },
    {
      'name': 'Navaratna',
      'cuisine': 'Indian',
      'ratings': [4.0, 4.5, 4.0],
    },
  ];
  for (var restaurant in restaurants) {
    final ratings = restaurant['ratings'] as List<double>;
    var total = 0.0;
    for (var rating in ratings) {
      total += rating;
    }
    restaurant['avgRating'] = (total / ratings.length).toStringAsFixed(1);
  }

  print(restaurants);
}

void exercise_06_19() {
  print("--- Exercise 06.19 ---");
  const bananas = 5;
  const apples = 6;
  const grains = {
    'pasta': '500g',
    'rice': '1kg',
  };
  const addGrains = true;
  var shoppingList = {
    if (bananas > 0) 'bananas': bananas,
    if (apples > 0) 'apples': apples,
    if (addGrains) ...grains
  };

  print(shoppingList);
  // prints {bananas: 5, apples: 6, pasta: 500g, rice: 1kg}
}

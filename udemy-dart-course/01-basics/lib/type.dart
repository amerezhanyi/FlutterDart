void exercise_03_06() {
  print("--- Exercise 03.06 ---");
  const text = 'I like pizza';
  const topping = 'with tomatoes';
  const favourite = '$text $topping';
  final newText = favourite.replaceAll('pizza', 'pasta');
  const newFavourite = 'Now I like curry';
  print(newText);
  print(newFavourite);
}

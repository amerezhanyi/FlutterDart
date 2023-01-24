class Allergies {
  static const allergens = <String, int>{
    "eggs": 1,
    "peanuts": 2,
    "shellfish": 4,
    "strawberries": 8,
    "tomatoes": 16,
    "chocolate": 32,
    "pollen": 64,
    "cats": 128,
  };

  bool allergicTo(String allergen, int score) {
    final allergyInList = allergens[allergen] ?? 0;
    return (score & allergyInList != 0);
  }

  List<String> list(int score) {
    return allergens.keys
        .where((element) => allergicTo(element, score))
        .toList();
  }
}

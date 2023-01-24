import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

import '../models/cocktail.dart';
import '../models/http_exception.dart';
import '../models/ingredient.dart';

class Cocktails extends ChangeNotifier {
  Cocktail? currentCocktail;

  Future<dynamic> requestCocktail(String title) async {
    final Uri url = Uri.parse(
        "https://www.thecocktaildb.com/api/json/v1/1/search.php?s=$title");

    try {
      final response = await http.get(url);
      final cocktail = json.decode(response.body) as Map<String, dynamic>;
      if (cocktail['error'] != null) {
        throw HttpException(cocktail['error']['message']);
      }

      var drinks = cocktail['drinks'];

      if (drinks == null) {
        currentCocktail = null;
        return;
      }

      String strIngredientName, strIngredientMeasure;
      List<Ingredient> ingredientList = [];
      var drink = cocktail['drinks'][0];

      for (int i = 1; i < 16; i++) {
        strIngredientName = 'strIngredient$i';
        strIngredientMeasure = 'strMeasure$i';
        String name = drink[strIngredientName] ?? " ";
        String measure = drink[strIngredientMeasure] ?? " ";

        if (name.isNotEmpty || measure.isNotEmpty) {
          ingredientList.add(
            Ingredient(
              name: name,
              measure: measure,
            ),
          );
        }
      }

      currentCocktail = Cocktail(
        name: drink['strDrink'],
        category: drink['strCategory'],
        alcoholic: drink['strAlcoholic'],
        glassType: drink['strGlass'],
        pictureUrl: drink['strDrinkThumb'],
        instructions: drink['strInstructions'],
        ingredients: ingredientList,
      );

      notifyListeners();
    } catch (error) {
      rethrow;
    }
  }
}

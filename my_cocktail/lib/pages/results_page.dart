import "package:flutter/material.dart";
import 'package:my_cocktail/models/ingredient.dart';
import 'package:my_cocktail/providers/cocktails.dart';
import 'package:my_cocktail/widgets/info_card.dart';
import 'package:my_cocktail/widgets/ingredients_table.dart';
import 'package:provider/provider.dart';

import '../widgets/main_button.dart';

class ResultPage extends StatelessWidget {
  static const routeName = '/result';

  const ResultPage({super.key});

  @override
  Widget build(BuildContext context) {
    final currentCocktail = Provider.of<Cocktails>(context).currentCocktail;

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 16.0, bottom: 16.0),
              child: Center(
                child: Text(
                  currentCocktail?.name ?? "Cocktail name",
                  style: Theme.of(context).textTheme.headline2,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              height: 64,
              decoration: BoxDecoration(
                color: Theme.of(context).secondaryHeaderColor,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(currentCocktail?.category ?? "unknown category"),
                  const Text("-"),
                  Text(currentCocktail?.alcoholic ?? "alcoholic?"),
                  const Text("-"),
                  Text(currentCocktail?.glassType ?? "unknown glass type"),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: NetworkImage(currentCocktail?.pictureUrl ??
                            "https://picsum.photos/id/326/200/200.jpg"))),
              ),
            ),
            InfoCard(
              title: "Ingredients",
              body: IngredientsTable(
                  ingredientsList: currentCocktail?.ingredients ??
                      [const Ingredient(name: "Water", measure: "1.5l")]),
            ),
            InfoCard(
              title: "Instruction",
              body: Text(
                  currentCocktail?.instructions ?? "Just mix and shake! 🍸"),
            ),
            Container(
                padding: const EdgeInsets.only(top: 16, left: 32, right: 32),
                child: MainButton(
                    callback: () {
                      Navigator.of(context).pop();
                    },
                    title: "Return")),
          ],
        ),
      ),
    );
  }
}

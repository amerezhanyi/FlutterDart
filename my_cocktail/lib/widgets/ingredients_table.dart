import 'package:flutter/material.dart';
import 'package:my_cocktail/models/ingredient.dart';

class IngredientsTable extends StatelessWidget {
  final List<Ingredient> ingredientsList;

  const IngredientsTable({super.key, required this.ingredientsList});

  Widget row(title) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 4),
      alignment: Alignment.center,
      child: Text(title),
    );
  }

  Widget createTable() {
    final List<TableRow> rows = [];

    for (var item in ingredientsList) {
      if (item.name != " " && item.measure != " ") {
        rows.add(
          TableRow(
            children: [
              row(item.name),
              row(item.measure),
            ],
          ),
        );
      }
    }

    return Table(
      children: rows,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: createTable(),
    );
  }
}

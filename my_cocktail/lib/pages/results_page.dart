import "package:flutter/material.dart";
import 'package:my_cocktail/widgets/info_card.dart';

import '../widgets/main_button.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 16.0, bottom: 16.0),
              child: Center(
                child: Text(
                  "Title",
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
                children: const [
                  Text("category"),
                  Text("-"),
                  Text("alcoholic"),
                  Text("-"),
                  Text("glass type"),
                ],
              ),
            ),
            Container(
              width: 200,
              height: 200,
              decoration: const BoxDecoration(shape: BoxShape.circle),
            ),
            InfoCard(
              title: "Ingredients",
              body:
                  "test text test text test text test text test text test text test text test text test text test text test text test text test text test text test text test text test text test text test text test text test text test text test text test text test text test text test text test text test text test text test text test text test text test text test text test text test text test text test text test text test text test text test text test text test text test text test text test text test text test text test text test text test text test text test text test text test text test text test text test text test text test text test text test text test text test text test text test text test text test text test text test text test text test text test text test text test text test text test text test text test text test text test text test text test text test text test text test text test text test text test text test text test text test text test text test text test text test text ",
            ),
            InfoCard(
              title: "Instruction",
              body:
                  "test text test text test text test text test text test text test text test text test text test text test text test text test text test text test text test text test text test text test text test text test text test text test text test text test text test text test text test text test text test text test text test text test text test text test text test text test text test text test text test text test text test text test text test text test text test text test text test text test text test text test text test text test text test text test text test text test text test text test text test text test text test text test text test text test text test text test text test text test text test text test text test text test text test text test text test text test text test text test text test text test text test text test text test text test text test text test text test text test text test text test text test text test text test text test text test text test text test text ",
            ),
            Container(
                padding: EdgeInsets.only(top: 16, left: 32, right: 32),
                child: MainButton(callback: () {}, title: "Return")),
          ],
        ),
      ),
    );
  }
}

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:my_cocktail/pages/results_page.dart';
import 'package:my_cocktail/providers/cocktails.dart';
import 'package:provider/provider.dart';

import 'package:my_cocktail/models/http_exception.dart';
import 'package:my_cocktail/widgets/main_button.dart';

class SearchPage extends StatefulWidget {
  static const routeName = '/search';

  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  String _cocktailName = "";
  String _error = "";

  Future<void> _setCocktailName(Cocktails cocktail, [bool? isRandom]) async {
    setState(() {
      _error = "";
    });

    if (isRandom == true) {
      final titles = ["zombie", "long vodka", "bloody mary", "cuba libre"];
      setState(() {
        _cocktailName = titles[Random().nextInt(titles.length)];
      });
    }

    if (_cocktailName.isEmpty) {
      setState(() {
        _error = "Please provide something.";
      });
      return;
    }

    final String title = _cocktailName.toLowerCase().replaceAll(" ", "_");
    try {
      await cocktail.requestCocktail(title);
      final currentCocktail = cocktail.currentCocktail;

      if (currentCocktail == null) {
        setState(() {
          _error = "Nothing 😔 Try another one.";
        });
      }

      setState(() {
        _cocktailName = "";
      });
    } on HttpException catch (error) {
      var errorMessage = "Fetching failed!\n$error";
      setState(() {
        _error = errorMessage;
      });
    } catch (error) {
      var errorMessage = "Could not fetch data!\n$error";
      setState(() {
        _error = errorMessage;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final cocktail = Provider.of<Cocktails>(context, listen: false);
    final nav = Navigator.of(context);
    var outlineInputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(25),
      borderSide: BorderSide(color: Theme.of(context).primaryColor, width: 5),
    );

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 32, bottom: 64),
                  child: Text(
                    "Cocktails",
                    style: Theme.of(context).textTheme.headline1,
                  ),
                ),
                TextField(
                  onChanged: (value) => _cocktailName = value,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(20),
                    hintText: "Name a Cocktail?",
                    border: outlineInputBorder,
                    focusedBorder: outlineInputBorder,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 32,
                    top: 16,
                  ),
                  child: Text(_error.isNotEmpty ? _error : ""),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 32),
                  child: MainButton(
                    callback: () async {
                      await _setCocktailName(cocktail);
                      if (_error.isEmpty) {
                        nav.pushNamed(ResultPage.routeName);
                      }
                    },
                    title: "Search",
                  ),
                ),
                MainButton(
                    callback: () async {
                      await _setCocktailName(cocktail, true);
                      if (_error.isEmpty) {
                        nav.pushNamed(ResultPage.routeName);
                      }
                    },
                    title: "Random"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

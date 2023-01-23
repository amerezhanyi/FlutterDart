import 'package:flutter/material.dart';
import 'package:my_cocktail/providers/cocktails.dart';
import 'package:provider/provider.dart';

import 'package:my_cocktail/models/http_exception.dart';
import 'package:my_cocktail/widgets/main_button.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  String _cocktailName = "";

  void _setCocktailName() async {
    if (_cocktailName.isEmpty) {
      return;
    }

    print(">>> Title: $_cocktailName");
    setState(() {
    //   _cocktailName = _cocktailName;
    });
    final String title = _cocktailName.toLowerCase().replaceAll(" ", "_");
    try {
      await Provider.of<Cocktails>(context, listen: false)
          .requestCocktail(title);
    } on HttpException catch (error) {
      var errorMessage = "Fetching failed!\n$error";
      print("!!! $errorMessage");
      // _showErrorDialog(errorMessage);
    } catch (error) {
      var errorMessage = "Could not fetch data!\n$error";
      print("!!! $errorMessage");
      // _showErrorDialog(errorMessage);
    }
  }

  @override
  Widget build(BuildContext context) {
    var outlineInputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(25),
      borderSide: BorderSide(color: Theme.of(context).primaryColor, width: 5),
    );

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 32.0, bottom: 64.0),
                  child: Text(
                    "Cocktails",
                    style: Theme.of(context).textTheme.headline1,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 64.0),
                  child: TextField(
                    onChanged: (value) => _cocktailName = value,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.all(20),
                      hintText: "Name a Cocktail?",
                      border: outlineInputBorder,
                      focusedBorder: outlineInputBorder,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 32.0),
                  child: MainButton(
                    callback: _setCocktailName,
                    title: "Search",
                  ),
                ),
                Text("cocktail: <$_cocktailName>"),
                MainButton(callback: () {}, title: "Random"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

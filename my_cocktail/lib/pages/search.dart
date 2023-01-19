import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Text("Cocktails"),
            const Text("Input"),
            TextButton(onPressed: () => null, child: const Text("Search")),
            TextButton(onPressed: () => null, child: const Text("Random"))
          ],
        ),
      ),
    );
  }
}

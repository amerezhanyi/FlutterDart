import 'package:coffee_shop_ui/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'models/coffee_shop.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => CoffeeShop(),
      builder: (context, child) => const MaterialApp(
        home: HomePage(),
      ),
    );
  }
}

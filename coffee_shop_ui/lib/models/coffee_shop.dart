import 'package:flutter/material.dart';

import '../coffee_list.dart';
import 'coffee.dart';

class CoffeeShop extends ChangeNotifier {
  final List<Coffee> _shop = coffeeList;

  final List<Coffee> _cart = [];

  List<Coffee> get coffeeShop => _shop;

  List<Coffee> get userCart => _cart;

  void addToCart(Coffee coffee) {
    _cart.add(coffee);
  }

  void removeFromCart(Coffee coffee) {
    _cart.remove(coffee);
  }
}

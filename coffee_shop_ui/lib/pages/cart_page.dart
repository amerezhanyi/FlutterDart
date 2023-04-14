import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:provider/provider.dart';

import '../models/coffee.dart';
import '../models/coffee_shop.dart';
import '../widgets/coffee_tile.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  void removeFromCart(Coffee coffee) {
    Provider.of<CoffeeShop>(context, listen: false).removeFromCart(coffee);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<CoffeeShop>(
      builder: (context, value, child) => SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              const Text(
                "Shopping Cart",
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(height: 25),
              Expanded(
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    Coffee coffee = value.coffeeShop[index];
                    return CoffeeTile(
                      coffee: coffee,
                      icon: const Icon(Icons.remove),
                      onPressed: () => removeFromCart(coffee),
                    );
                  },
                  itemCount: value.userCart.length,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

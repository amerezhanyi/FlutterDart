import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../coffee_list.dart';
import '../models/coffee.dart';
import '../models/coffee_shop.dart';
import '../widgets/coffee_tile.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  void addToCart(Coffee coffee) {
    Provider.of<CoffeeShop>(context, listen: false).addToCart(coffee);
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text("Added to cart!"),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text("OK"),
          ),
        ],
      ),
    );
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
                "How would you like your coffee?",
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(height: 25),
              Expanded(
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    Coffee coffee = value.coffeeShop[index];
                    return CoffeeTile(
                      coffee: coffee,
                      icon: const Icon(Icons.add),
                      onPressed: () => addToCart(coffee),
                    );
                  },
                  itemCount: coffeeList.length,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

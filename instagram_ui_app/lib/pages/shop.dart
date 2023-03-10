import 'package:flutter/material.dart';
import 'package:instagram_ui_app/widgets/shop_grid.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: const Text(
            'Shop',
            style: TextStyle(color: Colors.black),
          ),
          actions: const [
            Icon(Icons.calendar_today),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Icon(Icons.menu),
            ),
          ],
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(48),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.grey[300],
                  child: Row(
                    children: [
                      Icon(Icons.search, color: Colors.grey[500]),
                      Text(
                        'Search',
                        style: TextStyle(color: Colors.grey[500]),
                      )
                    ],
                  ),
                ),
              ),
            ),
          )),
      body: const ShopGrid(),
    );
  }
}

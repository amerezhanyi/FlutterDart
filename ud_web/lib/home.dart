import 'package:flutter/material.dart';

import './widgets/navigation.dart';
import './widgets/main_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.all(10.0),
            height: 70.0,
            width: double.infinity,
            color: Colors.indigo,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: NavigationItem.navigationItems
                  .map(
                    (
                      title,
                    ) =>
                        NavigationItem(title: title),
                  )
                  .toList(),
            ),
          ),
          const SizedBox(
            height: 10.0,
            width: double.infinity,
          ),
          Container(
            height: 400.0,
            width: double.infinity,
            color: Colors.red,
            child: Row(
              children: MainCard.cards
                  .map(
                    (card) => MainCard(card: card),
                  )
                  .toList(),
            ),
          ),
          const SizedBox(
            height: 10.0,
            width: double.infinity,
          ),
          Container(
            height: 50.0,
            width: 200.0,
            // color: Colors.white,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              color: Colors.brown,
            ),
            child: const Text("Our Team",
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                )
            ),
          ),
        ],
      ),
    );
  }
}

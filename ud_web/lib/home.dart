import 'package:flutter/material.dart';

import './widgets/navigation.dart';
import './widgets/main_card.dart';
import './widgets/team_card.dart';
import './widgets/title_badge.dart';
import './widgets/post_card.dart';

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
          const TitleBadge(text: "Our Team", color: Colors.brown),
          Container(
            height: 400.0,
            margin: const EdgeInsets.only(bottom: 10.0, top: 10.0),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: TeamCard.cards.length,
              itemBuilder: (ctx, index) => TeamCard(cardIndex: index),
            ),
          ),
          const TitleBadge(text: "Last Posts", color: Colors.blue),
          const SizedBox(
            height: 10.0,
            width: double.infinity,
          ),
          Container(
            height: 400.0,
            width: double.infinity,
            child: Column(
              children: PostCard.cards
                  .map(
                    (card) => PostCard(card: card),
                  )
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}

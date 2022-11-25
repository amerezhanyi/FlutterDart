import 'package:flutter/material.dart';

class TeamCard extends StatelessWidget {
  static final List<Map<String, dynamic>> cards = [
    {
      "color": Colors.red,
      "title": "Member 1",
      "caption": "lorem ipsum",
      "imageUrl": "https://picsum.photos/id/30/1280/901",
    },
    {
      "color": Colors.cyan,
      "title": "Member 2",
      "caption": "one upon a time",
      "imageUrl": "https://picsum.photos/id/40/4106/2806",
    },
    {
      "color": Colors.brown,
      "title": "Member 3",
      "caption": "dolor sit aet",
      "imageUrl": "https://picsum.photos/id/42/3456/2304",
    },
    {
      "color": Colors.black,
      "title": "Member 4",
      "caption": "lorem ipsum",
      "imageUrl": "https://picsum.photos/id/39/3456/2304",
    },
    {
      "color": Colors.grey,
      "title": "Member 5",
      "caption": "one upon a time",
      "imageUrl": "https://picsum.photos/id/41/1280/805",
    },
    {
      "color": Colors.indigo,
      "title": "Member 6",
      "caption": "dolor sit aet",
      "imageUrl": "https://picsum.photos/id/45/4592/2576",
    },
  ];

  const TeamCard({
    Key? key,
    required this.cardIndex,
  }) : super(key: key);

  final int cardIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 450.0,
      width: 230.0,
      margin: const EdgeInsets.only(
        left: 5.0,
        right: 5.0,
      ),
      padding: const EdgeInsets.all(10.0),
      color: cards[cardIndex]["color"],
      child: Column(
        children: [
          Container(
            width: 200.0,
            height: 200.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100.0),
            ),
            child: Image.network(
              cards[cardIndex]["imageUrl"],
              fit: BoxFit.cover,
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            margin: const EdgeInsets.only(
              top: 10.0,
              bottom: 10.0,
            ),
            child: Text(
              cards[cardIndex]["title"],
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20.0,
              ),
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            margin: const EdgeInsets.only(
              top: 10.0,
              bottom: 10.0,
            ),
            child: Text(
              cards[cardIndex]["caption"],
              style: const TextStyle(
                color: Colors.white,
                fontSize: 12.0,
              ),
            ),
          )
        ],
      ),
    );
  }
}

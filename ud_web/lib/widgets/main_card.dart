import 'package:flutter/material.dart';

class MainCard extends StatelessWidget {
  static final List<Map<String, dynamic>> cards = [
    {
      "flexSize": 1,
      "color": Colors.blue,
      "title": "Title 1",
      "caption": "lorem ipsum",
      "imageUrl": "https://picsum.photos/id/0/5000/3333",
    },
    {
      "flexSize": 1,
      "color": Colors.amber,
      "title": "Title 2",
      "caption": "one upon a time",
      "imageUrl": "https://picsum.photos/id/10/2500/1667",
    },
    {
      "flexSize": 2,
      "color": Colors.green,
      "title": "Title 3",
      "caption": "dolor sit aet",
      "imageUrl": "https://picsum.photos/id/28/4928/3264",
    },
  ];

  const MainCard({
    Key? key,
    required this.card,
  }) : super(key: key);

  final Map<String, dynamic> card;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: card["flexSize"],
      child: Container(
        // height: 390.0,
        margin: const EdgeInsets.all(10.0),
        padding: const EdgeInsets.all(10.0),
        color: card["color"],
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 200.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100.0),
              ),
              child: Image.network(
                card["imageUrl"],
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
                card["title"],
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
                card["caption"],
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 12.0,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

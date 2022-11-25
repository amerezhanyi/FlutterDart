import 'package:flutter/material.dart';
import 'package:ud_web/widgets/text_badge.dart';
import 'package:ud_web/widgets/text_block.dart';

class PostCard extends StatelessWidget {
  static final List<Map<String, dynamic>> cards = [
    {
      "title": "Post 1",
      "caption": "lorem ipsum",
      "date": "01.01.22",
      "imageUrl": "https://picsum.photos/id/56/2880/1920",
    },
    {
      "title": "Post 2",
      "caption": "one upon a time",
      "date": "02.02.22",
      "imageUrl": "https://picsum.photos/id/59/2464/1632",
    },
  ];

  const PostCard({
    Key? key,
    required this.card,
  }) : super(key: key);

  final Map<String, dynamic> card;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        elevation: 10.0,
        margin: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            Container(
              width: 200.0,
              height: 200.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100.0),
              ),
              child: Image.network(
                card["imageUrl"],
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Column(
                  children: [
                    TextBlock(
                        text: card["title"],
                        color: Colors.black,
                        fontSize: 20.0),
                    TextBlock(
                        text: card["date"], color: Colors.grey, fontSize: 12.0),
                    TextBlock(
                        text: card["caption"],
                        color: Colors.black,
                        fontSize: 16.0),
                    const TextBadge(text: "Read more..."),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:basics/rating.dart';
import 'package:flutter/material.dart';

class ImageCenter extends StatelessWidget {
  const ImageCenter({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      // height: 400,
      child: Column(
        children: [
          Center(
            child: Image.asset(
              'assets/images/lake.jpg',
              fit: BoxFit.cover,
            ),
          ),
          const Text(
            "This is the Lake",
            textDirection: TextDirection.ltr,
            style: TextStyle(
              fontSize: 32,
              color: Colors.black87,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                    child: Image.network('https://picsum.photos/id/237/100')),
                Expanded(
                    flex: 2,
                    child: Image.network('https://picsum.photos/id/238/100')),
                Expanded(
                    child: Image.network('https://picsum.photos/id/239/100')),
              ],
            ),
          ),
          const RatingStars(),
        ],
      ),
    );
  }
}

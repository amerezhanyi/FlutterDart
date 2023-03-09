import 'package:flutter/material.dart';

class UserPost extends StatelessWidget {
  final String avatarUrl;
  final String userName;
  final String imgUrl;

  const UserPost(
      {super.key,
      required this.imgUrl,
      required this.userName,
      required this.avatarUrl});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: NetworkImage(avatarUrl),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Text(
                    userName,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const Icon(Icons.more_horiz),
            ],
          ),
        ),
        SizedBox(
          height: 430,
          child: Image.network(imgUrl, fit: BoxFit.cover),
        )
      ],
    );
  }
}

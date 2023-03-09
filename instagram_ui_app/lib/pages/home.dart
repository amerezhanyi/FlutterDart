import 'package:flutter/material.dart';
import 'package:instagram_ui_app/widgets/bubble_story.dart';

import '../models/post.dart';
import '../models/story.dart';
import '../widgets/user_post.dart';

class UserHomePage extends StatelessWidget {
  const UserHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'Instagram',
          style: TextStyle(color: Colors.black),
        ),
        actions: const [
          Icon(Icons.add),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Icon(Icons.favorite),
          ),
          Icon(Icons.share),
        ],
      ),
      body: Column(
        children: [
          // STORIES
          SizedBox(
            height: 160,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: stories.length,
              itemBuilder: (context, index) {
                return BubbleStory(
                  imgUrl: stories[index].imgUrl,
                  title: stories[index].title,
                );
              },
            ),
          ),
          // POSTS
          Expanded(
            child: ListView.builder(
              itemCount: posts.length,
              itemBuilder: (context, index) {
                return UserPost(
                  imgUrl: posts[index].avatarUrl,
                  userName: posts[index].userName,
                  avatarUrl: posts[index].avatarUrl,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

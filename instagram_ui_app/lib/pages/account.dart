import 'package:flutter/material.dart';

import '../models/story.dart';
import '../widgets/bubble_story.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Row(
                children: [
                  const CircleAvatar(
                    radius: 50,
                    backgroundImage:
                        NetworkImage('https://picsum.photos/id/1/200/200'),
                  ),
                  // number of posts, followers, following
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Column(
                      children: const [
                        Text(
                          '237',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        Text('Posts'),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Column(
                      children: const [
                        Text(
                          '7',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        Text('Followers'),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Column(
                      children: const [
                        Text(
                          '23',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        Text('Following'),
                      ],
                    ),
                  ),
                ],
              ),
              // bio
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Mitchell',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        // SizedBox(width: 8),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 8.0),
                          child: Text('Flutter Developer'),
                        ),
                        Text(
                          'm.youtube.com/c/mitchell',
                          style: TextStyle(color: Colors.blue),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              // user stories
              Column(
                children: [
                  SizedBox(
                    height: 150,
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
                ],
              ),
              // flat buttons (edit profile, ad tools, insights)
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: const Text('Edit Profile'),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text('Ad Tools'),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text('Insights'),
                  ),
                ],
              ),
              // grid of posts
              Expanded(
                child: GridView.count(
                  crossAxisCount: 3,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                  children: List.generate(
                    24,
                    (index) => Container(
                      color: Colors.grey,
                      child: Image.network(
                        'https://picsum.photos/id/${10 + index * 3}/200/200',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              // bottom navigation bar
              Container(
                height: 50,
                child: TabBar(
                  tabs: const [
                    Tab(
                      icon: Icon(Icons.grid_on),
                    ),
                    Tab(
                      icon: Icon(Icons.video_call),
                    ),
                    Tab(
                      icon: Icon(Icons.shop),
                    ),
                    Tab(
                      icon: Icon(Icons.person),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

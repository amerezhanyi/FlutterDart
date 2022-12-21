import 'package:basics/image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import './button.dart';
import './counter.dart';

void main() {
  runApp(
    const CupertinoApp(
      title: 'Flutter Tutorial',
      home: TutorialHome(),
    ),
  );
}

class TutorialHome extends StatelessWidget {
  const TutorialHome({super.key});

  @override
  Widget build(BuildContext context) {
    // Scaffold is a layout for
    // the major Material Components.
    return Scaffold(
      appBar: const CupertinoNavigationBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          tooltip: 'Navigation menu',
          onPressed: null,
        ),
        middle: Text('Marry Christmas!'),
        trailing: IconButton(
          icon: Icon(Icons.search),
          tooltip: 'Search',
          onPressed: null,
        ),
        // actions: [
        //   IconButton(
        //     icon: Icon(Icons.search),
        //     tooltip: 'Search',
        //     onPressed: null,
        //   ),
        // ],
      ),
      // body is the majority of the screen.
      body: Center(
        child: Column(
          children: const [
            Text('Ho-ho-ho, world!'),
            MyButton(),
            Counter(),
            ImageCenter(),
          ],
        ),
      ),
      floatingActionButton: const FloatingActionButton(
        tooltip: 'Add gift', // used by assistive technologies
        onPressed: null,
        child: Icon(Icons.add),
      ),
    );
  }
}

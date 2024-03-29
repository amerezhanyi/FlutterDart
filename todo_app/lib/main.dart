import 'package:flutter/material.dart';

import 'pages/task_list_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ToDo App',
      theme: ThemeData(
        backgroundColor: Colors.yellow[200],
        primarySwatch: Colors.yellow,
        primaryColor: Colors.yellow,
        highlightColor: Colors.black,
        selectedRowColor: Colors.red,
      ),
      home: const TaskListPage(),
    );
  }
}

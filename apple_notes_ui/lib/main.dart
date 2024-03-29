import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'models/note_data.dart';
import 'pages/home_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => NoteData(),
      builder: (context, child) => const MaterialApp(
        home: HomePage(),
      ),
    );
  }
}

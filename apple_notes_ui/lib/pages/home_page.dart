import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/note_data.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<NoteData>(
      builder: (BuildContext context, value, Widget? child) => Scaffold(
        backgroundColor: CupertinoColors.systemGroupedBackground,
        body: SafeArea(
          child: Column(
            children: [
              // header
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: Text('Notes',
                    style: Theme.of(context).textTheme.headlineLarge),
              ),
              // list of notes
              CupertinoListSection.insetGrouped(
                children: List.generate(
                  value.getNotes.length,
                  (index) => CupertinoListTile(
                    title: Text(value.getNotes[index].text),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

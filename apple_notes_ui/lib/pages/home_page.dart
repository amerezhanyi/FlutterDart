import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/note.dart';
import '../models/note_data.dart';
import 'editing_note_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void createNewNote() {
    final id = Provider.of<NoteData>(context, listen: false).getNotes.length;
    Note newNote = Note(
      id: id + 1,
      text: '',
    );
    goToNotePage(newNote, true);
  }

  void goToNotePage(Note note, bool isNewNote) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => EditingNotePage(
          note: note,
          isNewNote: isNewNote,
        ),
      ),
    );
  }

  // delete note
  void deleteNote(Note note) {
    Provider.of<NoteData>(context, listen: false).remove(note);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<NoteData>(
      builder: (BuildContext context, value, Widget? child) => Scaffold(
        backgroundColor: CupertinoColors.systemGroupedBackground,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            createNewNote;
          },
          elevation: 0,
          backgroundColor: Colors.grey[300],
          child: const Icon(
            Icons.add,
            color: Colors.grey,
          ),
        ),
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

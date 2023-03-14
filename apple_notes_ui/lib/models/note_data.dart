import 'package:flutter/material.dart';

import 'note.dart';

class NoteData extends ChangeNotifier {
  // overall list of notes
  List<Note> notes = [
    Note(
      id: 1,
      text: 'This is a note',
    ),
    Note(
      id: 2,
      text: 'This is another note',
    ),
    Note(
      id: 3,
      text: 'This is a third note',
    )
  ];
  // get notes
  List<Note> get getNotes => notes;

  // add a new note
  void add(Note note) {
    notes.add(note);
    notifyListeners();
  }

  // remove a note
  void remove(Note note) {
    notes.remove(note);
    notifyListeners();
  }

  // update a note
  void update(Note note) {
    // find the note
    final index = notes.indexWhere((element) => element.id == note.id);
    // update the note
    notes[index] = note;
    notifyListeners();
  }
}

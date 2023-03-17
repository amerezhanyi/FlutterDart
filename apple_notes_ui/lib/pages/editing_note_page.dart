import 'package:apple_notes_ui/models/note_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart';
import 'package:provider/provider.dart';

import '../models/note.dart';

class EditingNotePage extends StatefulWidget {
  final Note note;
  final bool isNewNote;

  const EditingNotePage(
      {super.key, required this.note, required this.isNewNote});

  @override
  State<EditingNotePage> createState() => _EditingNotePageState();
}

class _EditingNotePageState extends State<EditingNotePage> {
  QuillController _controller = QuillController.basic();

  @override
  void initState() {
    super.initState();
    loadExistingNotes();
  }

  void loadExistingNotes() {
    final doc = Document()..insert(0, widget.note.text);
    setState(() {
      _controller = QuillController(
        document: doc,
        selection: const TextSelection.collapsed(offset: 0),
      );
    });
  }

  // add new note
  void addNewNote() {
    final text = _controller.document.toPlainText();
    final id = Provider.of<NoteData>(context, listen: false).getNotes.length;
    Provider.of<NoteData>(context, listen: false).add(
      Note(
        id: id,
        text: text,
      ),
    );
  }

  // update existing note
  void updateNote() {
    final text = _controller.document.toPlainText();
    Provider.of<NoteData>(context, listen: false).update(
      Note(
        id: widget.note.id,
        text: text,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CupertinoColors.systemGroupedBackground,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_vert,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          QuillToolbar.basic(
            controller: _controller,
            showBoldButton: true,
            showItalicButton: true,
            showColorButton: false,
            showBackgroundColorButton: false,
            showAlignmentButtons: false,
            showFontFamily: false,
            showHeaderStyle: false,
            showDividers: false,
            showFontSize: false,
            showUnderLineButton: false,
            showStrikeThrough: false,
            showInlineCode: false,
            showClearFormat: true,
            showLeftAlignment: false,
            showCenterAlignment: false,
            showRightAlignment: false,
            showJustifyAlignment: false,
            showListNumbers: false,
            showListBullets: true,
            showListCheck: false,
            showCodeBlock: false,
            showQuote: false,
            showIndent: false,
            showLink: false,
            showUndo: true,
            showRedo: true,
            showSearchButton: false,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child:
                  QuillEditor.basic(controller: _controller, readOnly: false),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (widget.isNewNote &&
              _controller.document.toPlainText().isNotEmpty) {
            addNewNote();
          } else {
            updateNote();
          }
          Navigator.pop(context);
        },
        child: const Icon(Icons.check),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notes_app/datamodels/noteFolder.dart';
import 'package:notes_app/widgets/folderWidget.dart';
import 'package:notes_app/widgets/noteListWidget.dart';

import '../datamodels/note.dart';

class NotesView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(children: [
      TextFormField(
          decoration: const InputDecoration(
              suffixIcon: Icon(Icons.search, color: Colors.grey))),
      ...folders.map((e) => FolderWidget(folder: e)).toList(),
      ...notes.map((e) => NoteListWidget(note: e)).toList(),
    ]));
  }
}

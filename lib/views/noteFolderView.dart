import 'package:flutter/material.dart';
import 'package:notes_app/datamodels/noteFolder.dart';

class NoteFolderView extends StatelessWidget {
  NoteFolder noteFolder;
  NoteFolderView({required this.noteFolder});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('none folder'),
      ),
    );
  }
}

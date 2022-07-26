import 'package:flutter/material.dart';

import '../datamodels/note.dart';

class NoteContent extends StatelessWidget {
  Note? note;
  NoteContent({this.note});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('note!.content'),
      ),
    );
  }
}

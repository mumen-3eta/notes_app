import 'package:notes_app/views/noteFolderView.dart';

import '../navigation/navigation.dart';
import 'note.dart';

class NoteFolder {
  String title;
  List<Note>? notes;

  NoteFolder({required this.title, this.notes});

  openFolder() {
    Navigation.navigateToWidget(NoteFolderView(noteFolder: this));
  }
}

List<NoteFolder> folders = [
  NoteFolder(title: 'folder1'),
  NoteFolder(title: 'folder2'),
  NoteFolder(title: 'folder2'),
  NoteFolder(title: 'folder4'),
];

import 'package:notes_app/navigation/navigation.dart';
import 'package:notes_app/views/noteContenet.dart';

class Note {
  String? title;
  String content;
  String? lastModified;
  String firstCreated = DateTime.now().toString().substring(0, 11);

  Note({required this.content, this.title, this.lastModified});

  openNote() {
    Navigation.navigateToWidget(NoteContent(
      note: this,
    ));
  }
}

List<Note> notes = [Note(content: 'content'), Note(content: 'content')];

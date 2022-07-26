import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notes_app/navigation/navigation.dart';
import 'package:notes_app/views/noteContenet.dart';

import '../datamodels/note.dart';

class NoteListWidget extends StatelessWidget {
  Note note;
  NoteListWidget({required this.note});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigation.navigateToWidget(NoteContent(
          note: note,
        ));
      },
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(15)),
        ),
        height: 80,
        padding: const EdgeInsets.fromLTRB(15, 3, 20, 3),
        margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 13),
        child: Row(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  note.title == null ? note.content : note.title!,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    overflow: TextOverflow.ellipsis,
                  ),
                  maxLines: 1,
                ),
                Text(
                  note.content,
                  style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                    overflow: TextOverflow.ellipsis,
                  ),
                  maxLines: 1,
                ),
                SizedBox(
                  height: 3.h,
                ),
                Text(
                  note.firstCreated,
                  style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                    overflow: TextOverflow.ellipsis,
                  ),
                  maxLines: 1,
                ),
              ],
            ),
            const Spacer()
          ],
        ),
      ),
    );
  }
}

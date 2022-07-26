import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:notes_app/datamodels/noteFolder.dart';
import 'package:notes_app/navigation/navigation.dart';
import 'package:notes_app/views/noteFolderView.dart';

class FolderWidget extends StatelessWidget {
  NoteFolder folder;

  FolderWidget({required this.folder});
  @override
  Widget build(BuildContext context) {
    bool number = folder.notes == null;
    return GestureDetector(
      onTap: () {
        Navigation.navigateToWidget(NoteFolderView(noteFolder: folder));
      },
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(15)),
        ),
        height: 60,
        padding: const EdgeInsets.fromLTRB(15, 10, 20, 10),
        margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 13),
        child: Row(
          children: [
            SvgPicture.asset(
              'assets/icons/folder.svg',
              width: 25,
            ),
            // const Icon(
            //   Icons.folder,
            //   color: Colors.yellow,
            // ),
            const SizedBox(width: 10),
            Text(
              folder.title,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            const Spacer(),
            Text(number ? '0' : folder.notes!.length.toString())
          ],
        ),
      ),
    );
  }
}

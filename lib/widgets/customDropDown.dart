import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:notes_app/datamodels/noteFolder.dart';

class CustomDropDown extends StatefulWidget {
  const CustomDropDown({Key? key}) : super(key: key);

  @override
  State<CustomDropDown> createState() => _CustomButtonTestState();
}

class _CustomButtonTestState extends State<CustomDropDown> {
  Color yellow = Color.fromARGB(255, 212, 193, 17);
  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: DropdownButton2(
        focusColor: Colors.transparent,
        customButton: Icon(
          Icons.arrow_drop_down_rounded,
          color: yellow,
        ),
        customItemsIndexes: const [3],
        items: [
          ...folders.map(
            (item) => DropdownMenuItem<NoteFolder>(
              value: item,
              child: Row(
                children: [
                  Text(item.title),
                  const Spacer(),
                  Text(item.notes == null ? '0' : item.notes!.length.toString())
                ],
              ),
            ),
          ),
          const DropdownMenuItem<Divider>(enabled: false, child: Divider()),
          const DropdownMenuItem<String>(value: 'Trash', child: Text('Trash')),
          const DropdownMenuItem<String>(
              value: 'New folder', child: Text('New folder')),
        ],
        onChanged: (value) {
          if (value is NoteFolder) {
            value.openFolder();
          }
        },
        itemHeight: 48,
        itemPadding: const EdgeInsets.only(left: 16, right: 16),
        dropdownWidth: 160,
        dropdownPadding: const EdgeInsets.symmetric(vertical: 6),
        dropdownDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
        ),
        dropdownElevation: 8,
        offset: const Offset(0, 8),
      ),
    );
  }
}

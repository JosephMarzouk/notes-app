
import 'package:flutter/material.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/ColorsListView.dart';

import '../constants.dart';

class EditNoteColorList extends StatefulWidget {
  const EditNoteColorList({super.key, required this.note});

  final NoteModel note;

  @override
  State<EditNoteColorList> createState() => _EditNoteColorListState();
}

class _EditNoteColorListState extends State<EditNoteColorList> {

  late int currentIndex;
  @override
  void initState() {
    currentIndex= kColorsList.indexOf(Color(widget.note.color));

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: kColorsList.length,
          itemBuilder: ((context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6),
              child: GestureDetector(
                  onTap: () {
                    currentIndex = index;
                    widget.note.color= kColorsList[currentIndex].value;
                    
                    setState(() {});
                  },
                  child: CustomItem(
                    color: kColorsList[index],
                    isSelected: currentIndex == index,
                  )),
            );
          })),
    );
  }
}

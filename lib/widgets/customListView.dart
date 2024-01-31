import 'package:flutter/material.dart';
import 'package:notes_app/widgets/customNoteItem.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key, required this.itemColor});
final Color itemColor;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context,index){
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: NoteItem(itemColor: itemColor),
      );
    });
  }
}
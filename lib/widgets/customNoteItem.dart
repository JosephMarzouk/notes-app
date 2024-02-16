import 'package:flutter/material.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/view/edit_note.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.note});

  final NoteModel note;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: ((context) {
          return const EditNoteView();
        })));
      },
      child: Container(
          decoration: BoxDecoration(
              color: Color(note.color),
              borderRadius: BorderRadius.circular(16)),
          child: Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                ListTile(
                    title: Text(
                      note.title,
                      style: const TextStyle(color: Colors.black, fontSize: 26),
                    ),
                    subtitle: Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text(note.subtitle,
                          style: TextStyle(
                              color: Colors.black.withOpacity(0.4),
                              fontSize: 15)),
                    ),
                    trailing: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.delete,
                        color: Colors.black,
                        size: 37,
                      ),
                    )),
                Padding(
                  padding: const EdgeInsets.only(top: 15, right: 7),
                  child: Text(note.date,
                      style: TextStyle(color: Colors.black.withOpacity(0.4))),
                ),
              ],
            ),
          )),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/cubit/notes_cubit_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/customNoteItem.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubitCubit, NotesCubitState>(
      builder: (context, state) {
        List<NoteModel> notes =
            BlocProvider.of<NotesCubitCubit>(context).notes ?? [];
            notes.sort((a, b) {
          if (a.color == Colors.red && b.color != Colors.red) {
            return -1;
          } else if (a.color != Colors.red && b.color == Colors.red) {
            return 1;
          } else if (a.color == Color(0xFFFFC107) && b.color == Color(0xFF4CAF50)) {
            return -1;
          } else if (a.color == Color(0xFF4CAF50) && b.color == Color(0xFFFFC107)) {
            return 1;
          } else {
            return 0;
          }
        });
        return ListView.builder(
            itemCount: notes.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: NoteItem(note: notes[index]),
              );
            });
      },
    );
  }
}

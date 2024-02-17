import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/cubit/notes_cubit_cubit.dart';
import 'package:notes_app/widgets/customAppBar.dart';
import 'package:notes_app/widgets/custom_text_field.dart';
import 'package:notes_app/models/note_model.dart';

class EditNoteView extends StatefulWidget {
  const EditNoteView({super.key, required this.note});

  final NoteModel note;

  @override
  State<EditNoteView> createState() => _EditNoteViewState();
}

class _EditNoteViewState extends State<EditNoteView> {
  String? title, content;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          children: [
            const SizedBox(
              height: 60 ,
            ),
            CustomAppBar(
                onPressed: () {
                  widget.note.title = title ?? widget.note.title;
                  widget.note.content = content ?? widget.note.content;
                  widget.note.save();
                  BlocProvider.of<NotesCubitCubit>(context).fetchAllNotes();
                  Navigator.pop(context);
                },
                title: 'Edit Note',
                icon1: Icons.check),
            const Spacer(
              flex: 1,
            ),
            CustomTextField(
              hint:widget.note.title,
              onChanged: (value) {
                title = value;
              },
            ),
            const Spacer(
              flex: 1,
            ),
            CustomTextField(
              onChanged: (value) {
                content = value;
                
              },
              hint: widget.note.content,
              maxlines: 5,
            ),
            const Spacer(
              flex: 6,
            )
          ],
        ),
      ),
    );
  }
}

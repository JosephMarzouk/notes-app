import 'package:flutter/material.dart';
import 'package:notes_app/widgets/customButton.dart';
import 'package:notes_app/widgets/custom_text_field.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/models/note_model.dart';

class addNoteFrom extends StatefulWidget {
  const addNoteFrom({
    super.key,
  });

  @override
  State<addNoteFrom> createState() => _addNoteFromStateState();
}

class _addNoteFromStateState extends State<addNoteFrom> {
  final GlobalKey<FormState> formKey = GlobalKey();

  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  String? title, content;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: SingleChildScrollView(
        child: Column(
          children: [
            // Spacer(flex: 1,),
            const SizedBox(
              height: 15,
            ),
            CustomTextField(
              hint: 'title',
              onSaved: (value) {
                title = value;
              },
            ),
            //Spacer(flex: 2,),
            const SizedBox(
              height: 45,
            ),
            CustomTextField(
              hint: 'Content',
              maxlines: 7,
              onSaved: (value) {
                content = value;
              },
            ),
            //Spacer(flex: 5,),
            const SizedBox(
              height: 20,
            ),
            BlocBuilder<AddNoteCubit, AddNoteState>(
              builder: (context, state) {
                return CustomButton(
                  isLoading: state is AddNoteLoading? true : false,
                  buttonText: 'Add',
                  onTap: () {
                    if (formKey.currentState!.validate()) {
                      formKey.currentState!.save();
                      var noteModel = NoteModel(
                          title: title!,
                          subtitle: content!,
                          date: DateTime.now().toString(),
                          color: Colors.blue.value);
                      BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);
                    } else {
                      autovalidateMode = AutovalidateMode.always;
                      setState(() {});
                    }
                  },
                );
              },
            ),
            //Spacer(flex: 1,)
            const SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}

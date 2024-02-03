import 'package:flutter/material.dart';
import 'package:notes_app/widgets/customButton.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: addNoteFromState(),
    );
  }
}

class addNoteFromState extends StatefulWidget {
  const addNoteFromState({
    super.key,
  });

  @override
  State<addNoteFromState> createState() => _addNoteFromStateState();
}

class _addNoteFromStateState extends State<addNoteFromState> {
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
            CustomButton(
              buttonText: 'Add',
              onTap: () {
                if (formKey.currentState!.validate()) {
                  formKey.currentState!.save();
                }
                {
                  autovalidateMode = AutovalidateMode.always;
                }
                setState(() {});
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

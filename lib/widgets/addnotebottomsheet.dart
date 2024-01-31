import 'package:flutter/material.dart';
import 'package:notes_app/widgets/customButton.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Padding(
      padding:  EdgeInsets.symmetric(horizontal: 10),
      child: SingleChildScrollView(
        child: Column(
          children: [
           // Spacer(flex: 1,),
           SizedBox(height: 15,),
            CustomTextField(hint: 'title'),
            //Spacer(flex: 2,),
             SizedBox(height: 50,),
            CustomTextField(hint: 'Content',maxlines: 7,),
            //Spacer(flex: 5,),
             SizedBox(height: 30,),
            CustomButton(buttonText: 'Add'),
            //Spacer(flex: 1,)
             SizedBox(height: 15,),
          ],
        ),
      ),
    );
  }
}
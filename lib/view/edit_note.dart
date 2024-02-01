import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_text_field.dart';
import 'package:notes_app/widgets/customsearchicon.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        forceMaterialTransparency: true,
        toolbarHeight: 70,
        title: const Padding(
          padding: EdgeInsets.only(top: 20),
          child: Text(
            'Edit note',
            style: TextStyle(fontSize: 25),
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(top: 17, right: 13),
            child: CustomSearchIcon(icon: Icons.check),
          )
        ],
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal:12),
        child: Column(
          children: [
            Spacer(flex: 1,),
            CustomTextField(hint: 'Title'),
            Spacer(flex: 1,),
            CustomTextField(hint: 'Contnent',maxlines: 5,),
            Spacer(flex: 6,)
          ],
        ),
      ),
    );
  }
}

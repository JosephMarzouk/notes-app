import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/cubit/notes_cubit_cubit.dart';
import 'package:notes_app/view/addnotebottomsheet.dart';
import 'package:notes_app/widgets/customListView.dart';
import 'package:notes_app/widgets/customsearchicon.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubitCubit(),
      child: Scaffold(
        appBar: AppBar(
          forceMaterialTransparency: true,
          toolbarHeight: 70,
          title: const Padding(
            padding: EdgeInsets.only(top: 20),
            child: Text(
              'Notes',
              style: TextStyle(fontSize: 25),
            ),
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.only(top: 17, right: 13),
              child: CustomSearchIcon(
                icon: Icons.search,
              ),
            )
          ],
        ),
        body: const Padding(
          padding: EdgeInsets.only(left: 8, right: 8),
          child: Column(
            children: [
              Expanded(child: NotesListView(itemColor: Color(0xff19c37d))),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
                isScrollControlled: true,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16)),
                context: context,
                builder: (context) {
                  return AddNoteBottomSheet();
                });
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}

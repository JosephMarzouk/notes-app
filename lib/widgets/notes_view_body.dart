import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/cubit/notes_cubit_cubit.dart';
import 'package:notes_app/widgets/customAppBar.dart';
import 'package:notes_app/widgets/customListView.dart';


class NotesViewBody extends StatefulWidget {
  const NotesViewBody({Key? key}) : super(key: key);

  @override
  State<NotesViewBody> createState() => _NotesViewBodyState();
}

class _NotesViewBodyState extends State<NotesViewBody> {

  @override
  void initState() {
   BlocProvider.of<NotesCubitCubit>(context).fetchAllNotes();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.only(left: 20,right: 20,top:60),
      child: Column(
        
        children:  [
         // SizedBox(height: 50,),
         CustomAppBar(title: 'Notes', icon1: Icons.search),
         
          Expanded(child: NotesListView()),
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/cubit/notes_cubit_cubit.dart';
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
    return    Padding(
      padding:  EdgeInsets.only(left: 20,right: 20,top:60),
      child: Column(
        
        children:  [
         // SizedBox(height: 50,),
          Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          'Notes',
          style:  TextStyle(
            fontSize: 28,
          ),
        ),
        Container(
          height: 50,
          width: 60,
         decoration: BoxDecoration(color: Colors.grey.withOpacity(0.4),borderRadius: BorderRadius.circular(12)),
          child:const Icon(Icons.search,size: 40,),)
      ],
    ),
         
          Expanded(child: NotesListView()),
        ],
      ),
    );
  }
}
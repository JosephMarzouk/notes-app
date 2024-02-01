import 'package:flutter/material.dart';
import 'package:notes_app/view/edit_note.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({required this.itemColor});
   final Color itemColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: ((context) {
          return const EditNoteView();
        })));
      },
      child: Container(
          decoration: BoxDecoration(
              color: itemColor, borderRadius: BorderRadius.circular(16)),
          child: Padding(
            padding: const EdgeInsets.only(top:20,bottom: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                ListTile(
                    title:const Text(
                      'Flutter Tips',
                      style: TextStyle(color: Colors.black,fontSize: 26),
                      
                    ),
                    subtitle: Padding(
                      padding:const EdgeInsets.only(top:8.0),
                      child: Text(
                          'Don\'t wish it was easier,,Wish you were better',
                          style: TextStyle(color: Colors.black.withOpacity(0.4),fontSize: 15)),
                    ),
                    trailing: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.delete,color: Colors.black,size: 37,),
                    )),
                    Padding(
                      padding: const EdgeInsets.only(top:15 ,right:7 ),
                      child: Text('May23,2024',style: TextStyle(color: Colors.black.withOpacity(0.4))),
                    ),
              ],
            ),
          )),
    );
  }
}

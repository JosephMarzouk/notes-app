import 'package:flutter/material.dart';

class NoteItem extends StatelessWidget {
   NoteItem({required this.itemColor});
  var itemColor;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: itemColor, borderRadius: BorderRadius.circular(16)),
        child: Padding(
          padding: const EdgeInsets.only(top:20,bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                  title:const Text(
                    'Flutter Tips',
                    style: TextStyle(color: Colors.black,fontSize: 26),
                    
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(top:8.0),
                    child: Text(
                        'Don\'t wish it was easier,,Wish you were better',
                        style: TextStyle(color: Colors.black.withOpacity(0.4),fontSize: 15)),
                  ),
                  trailing: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.delete,color: Colors.black,size: 33,),
                  )),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('May23,2024',style: TextStyle(color: Colors.black.withOpacity(0.4))),
                  ),
            ],
          ),
        ));
  }
}

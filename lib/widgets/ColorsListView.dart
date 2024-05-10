import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';

class CustomItem extends StatelessWidget {
  const CustomItem({super.key, required this.isSelected, required this.color});

  final bool isSelected;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return isSelected
        ?  CircleAvatar(
            radius: 25,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 21,
              backgroundColor:color,
            ),
          )
        :  CircleAvatar(
            radius: 25,
            backgroundColor: color,
          );
  }
}

class ColorsListView extends StatefulWidget {
  const ColorsListView({
    super.key,
  });

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  int currentIndex = 0;
  
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: kColorsList.length,
          itemBuilder: ((context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6),
              child: GestureDetector(
                  onTap: () {
                    currentIndex = index;
                    BlocProvider.of<AddNoteCubit>(context).color= kColorsList[index];
                    setState(() {});
                  },
                  child: CustomItem(
                    color: kColorsList[index],
                    isSelected: currentIndex == index,
                  )),
            );
          })),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:notes_app/widgets/customsearchicon.dart';
import 'package:notes_app/widgets/homeviewbody.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            child: CustomSearchIcon(),
          )
        ],
      ),
      body: const HomeViewBody(),
    );
  }
}

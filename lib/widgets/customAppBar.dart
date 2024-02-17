import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.title, required this.icon1, this.onPressed});
 final String title;
 final IconData icon1;
 final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
         Text(
          title,
          style: const TextStyle(
            fontSize: 28,
          ),
        ),
        Container(
          height: 50,
          width: 60,
         decoration: BoxDecoration(color: Colors.grey.withOpacity(0.4),borderRadius: BorderRadius.circular(12)),
          child: GestureDetector(
            onTap:onPressed ,
            child: Icon(icon1,size: 40,)),)
      ],
    );
  }
}
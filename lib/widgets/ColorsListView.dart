import 'package:flutter/material.dart';

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
  List<Color> colors = const [
  Color(0xFFD81B60), // Raspberry Pink
  Color(0xFF4CAF50), // Enchanted Emerald
  Color(0xFF3949AB), // Mystical Midnight Blue
  Color(0xFFFFC107), // Sunshine Yellow
  Color(0xFF9C27B0), // Velvet Violet
  Color(0xFFFF5722), // Mango Tango Orange
  Color(0xFF00BCD4), // Tranquil Turquoise
];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: colors.length,
          itemBuilder: ((context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6),
              child: GestureDetector(
                  onTap: () {
                    currentIndex = index;
                    setState(() {});
                  },
                  child: CustomItem(
                    color: colors[index],
                    isSelected: currentIndex == index,
                  )),
            );
          })),
    );
  }
}

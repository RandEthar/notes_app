import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/color_item.dart';

class ListViewColorItem extends StatefulWidget {
  const ListViewColorItem({super.key});

  @override
  State<ListViewColorItem> createState() => _ListViewColorItemState();
}

class _ListViewColorItemState extends State<ListViewColorItem> {
  int currentIndex = 0;
  List<Color> colors = [
    const Color(0xffB2B1CF),
    const Color(0xff987284),
    const Color(0xff75b9be),
    const Color(0xffD0D6B5),
    const Color(0xfff9b5ac),
    const Color(0xffee7674),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 * 2,
      child: ListView.builder(
          itemCount:  colors.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  currentIndex = index;
                });
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4),
                child: ColorItem(
                  color: colors[index],
                  isActive: currentIndex == index,
                ),
              ),
            );
          }),
    );
  }
}

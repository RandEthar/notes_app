

import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/color_item.dart';

class ListViewColorItem extends StatelessWidget {
  const ListViewColorItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:38*2,
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context,index){
        return  ColorItem();
      }),
    );
  }
}